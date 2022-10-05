//
//  OperandHandler.swift
//  Created by Wonbi
//

struct OperandManager {
    private(set) var currentOperand: String = "0"
    private(set) var expression: String = ""
    
    mutating func setCurrentOperand(_ operand: String) {
        currentOperand = operand
    }
    
    mutating func clearExpression() {
        expression = ""
    }
    
    mutating func appendToExpression(_ expr: String) {
        expression.append(expr)
    }
    
    mutating func handleSignButton() {
        guard currentOperand != "0" else { return }
        
        if currentOperand.first == "-" {
            currentOperand.removeFirst()
        } else {
            currentOperand = "-" + currentOperand
        }
    }
    
    mutating func handleDotButton() {
        guard !currentOperand.contains(".") else { return }
        currentOperand.append(".")
    }
    
    mutating func handleZeroButtons(from operand: String) {
        guard currentOperand != "0" else { return }
        currentOperand.append(operand)
    }
    
    mutating func appendOperands(from operand: String) {
        if currentOperand == "0" {
            currentOperand = operand
        } else {
            currentOperand.append(operand)
        }
    }
}
