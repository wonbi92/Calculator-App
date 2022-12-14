//
//  FormulaTests.swift
//  Created by Wonbi
//

import XCTest
@testable import Calculator

final class FormulaTests: XCTestCase {
    var sut: Formula!
    
    override func setUpWithError() throws {
        try super.setUpWithError()
        let operands = CalculatorItemQueue<Double>()
        let operators = CalculatorItemQueue<Operator>()
        
        sut = Formula(operands: operands, operators: operators)
    }

    override func tearDownWithError() throws {
        try super.tearDownWithError()
        sut = nil
    }
    
    func test_operands에50과40과30과20과10을넣고_operators에덧셈뺄셈곱셈나눗셈연산자를하나씩넣었을때_계산결과가50더하기40빼기30곱하기20나누기10이나오는지() {
        sut.operands.enqueue(50.0)
        sut.operands.enqueue(40.0)
        sut.operands.enqueue(30.0)
        sut.operands.enqueue(20.0)
        sut.operands.enqueue(10.0)
        
        sut.operators.enqueue(Operator.add)
        sut.operators.enqueue(Operator.subtract)
        sut.operators.enqueue(Operator.multiply)
        sut.operators.enqueue(Operator.divide)
        
        let result = sut.result()
        
        let expectedValue = ((50.0+40.0-30.0)*20.0)/10.0
        XCTAssertEqual(expectedValue, result)
    }
    
    func test_operands에50과40과30과20을넣고_operators에덧셈뺄셈곱셈나눗셈연산자를하나씩넣었을때_계산결과가50더하기40빼기30곱하기20이나오는지() {
            sut.operands.enqueue(50.0)
            sut.operands.enqueue(40.0)
            sut.operands.enqueue(30.0)
            sut.operands.enqueue(20.0)
            
            sut.operators.enqueue(Operator.add)
            sut.operators.enqueue(Operator.subtract)
            sut.operators.enqueue(Operator.multiply)
            sut.operators.enqueue(Operator.divide)
            
            let result = sut.result()
            
            let expectedValue = ((50.0+40.0-30.0)*20.0)
            XCTAssertEqual(expectedValue, result)
        }
    
    func test_operands가비어있을때_0이제대로반환되는지() {
        sut.operators.enqueue(Operator.add)
        sut.operators.enqueue(Operator.add)
        
        let result = sut.result()
        
        XCTAssertEqual(0.0, result)
    }
    
    func test_0으로나눗셈을진행하면_NaN을반환하는지() {
        sut.operands.enqueue(Double.random(in: -100.0...100.0))
        sut.operators.enqueue(Operator.divide)
        sut.operands.enqueue(0.0)
        
        let result = sut.result()
        
        XCTAssertTrue(result.isNaN)
    }
    
    func test_0나누기0을진행하면_NaN을반환하는지() {
        sut.operands.enqueue(0.0)
        sut.operators.enqueue(Operator.divide)
        sut.operands.enqueue(0.0)
        
        let result = sut.result()
        
        XCTAssertTrue(result.isNaN)
    }
}

