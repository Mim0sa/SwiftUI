//
//  CalculatorButtonItem.swift
//  Calculator
//
//  Created by CM on 2020/8/24.
//  Copyright © 2020 mimosa. All rights reserved.
//

import Foundation
import CoreGraphics
import SwiftUI

enum CalculatorButtonItem {
    enum Op: String {
        case plus = "+"
        case minus = "-"
        case divide = "÷"
        case multiply = "×"
        case equal = "="
    }
    
    enum Command: String {
        case clear = "AC"
        case flip = "+/-"
        case percent = "%"
    }
    
    case digit(Int)
    case dot
    case op(Op)
    case command(Command)
}

extension CalculatorButtonItem {
    var title: String {
        switch self {
        case .digit(let digit):     return String(digit)
        case .dot:                  return "."
        case .op(let op):           return op.rawValue
        case .command(let command): return command.rawValue
        }
    }
    
    var size: CGSize {
        if case .digit(let value) = self, value == 0 {
            return CGSize(width: 88 * 2 + 8, height: 88)
        }
        return CGSize(width: 88, height: 88)
    }
    
    var backgroundColorName: String {
        switch self {
        case .digit, .dot: return "digitBackground"
        case .op:          return "operatorBackground"
        case .command:     return "commandBackground"
        }
    }
    
    var foregroundColor: Color {
        switch self {
        case .command: return Color("commandForeground")
        default:       return Color.white
        }
    }
}

extension CalculatorButtonItem: Hashable {}
