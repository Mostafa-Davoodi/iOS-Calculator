//
//  CalculatorButton.swift
//  iOS-Calculator
//
//  Created by Mostafa Davoodi on 6/13/22.
//

import SwiftUI

enum CalculatorButton: String {
	case zero, one, two, three, four, five, six, seven, eight, nine
	case equals, plus, minus, multiply, divide
	case decimal
	case ac, plusMinus, percent
	
	var title: String {
		switch self {
		case .zero: return "0"
		case .one: return "1"
		case .two: return "2"
		case .three: return "3"
		case .four: return "4"
		case .five: return "5"
		case .six: return "6"
		case .seven: return "7"
		case .eight: return "8"
		case .nine: return "9"
		case .equals: return "="
		case .plus: return "+"
		case .minus: return "-"
		case .multiply: return "X"
		case .divide: return "/"
		case .percent: return "%"
		case .plusMinus: return "+/-"
		case .decimal: return "."
		default: return "AC"
		}
	}
	
	var backgroundColor: Color {
		switch self {
		case .zero, .one, .two, .three, .four, .five, .six, .seven, .eight, .nine, .decimal:
			return Color(uiColor: .darkGray)
		case .ac, .plusMinus, .percent:
			return Color(uiColor: .lightGray)
		default: return .orange
		}
	}
	
}
