//
//  Formula.swift
//  Created by Wonbi
//

struct Formula {
    var operands: CalculatorItemQueue<Double>
    var operators: CalculatorItemQueue<Operator>
    
    mutating func result() -> Double {
        guard let firstOperand = operands.dequeue() else { return .zero }
        var result = firstOperand

        while !operators.isEmpty {
            let firstOperand = result
            let secondOperand = operands.dequeue()
            let currentOperator = operators.dequeue()
            
            if let secondOperand = secondOperand,
               let currentOperator = currentOperator {
                result = currentOperator.calculate(lhs: firstOperand, rhs: secondOperand)
            }
            
            if result.isInfinite || result.isNaN {
                return .nan
            }
        }

        return result
    }
}
