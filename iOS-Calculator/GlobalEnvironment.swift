//
//  GlobalEnvironment.swift
//  iOS-Calculator
//
//  Created by Mostafa Davoodi on 6/13/22.
//

import SwiftUI

class GlobalEnvironment: ObservableObject {
		
		@Published var display = ""
		
		func receiveInput(calculatorButton: CalculatorButton) {
				self.display = calculatorButton.title
		}
		
}
