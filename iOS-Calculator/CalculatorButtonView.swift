//
//  CalculatorButtonView.swift
//  iOS-Calculator
//
//  Created by Mostafa Davoodi on 6/13/22.
//

import SwiftUI

struct CalculatorButtonView: View {
	
	var button: CalculatorButton
	var handler: (() -> ())?
	@EnvironmentObject var env: GlobalEnvironment
	
	var body: some View {
		Button {
			print("tapped!")
//			#1
//			handler?()
			self.env.receiveInput(calculatorButton: self.button)
		} label: {
			Text(button.title)
				.frame(width: self.buttonWidth(button: button), height: self.buttonHeight())
				.background(button.backgroundColor)
				.foregroundColor(.white)
				.cornerRadius(self.buttonHeight())
				.font(.system(size: 36))
		}
	}
	
	
	private func buttonWidth(button: CalculatorButton) -> CGFloat {
		if button == .zero {
			return (UIScreen.main.bounds.width - (4 * 12)) / 4 * 2
			
		}
		return (UIScreen.main.bounds.width - (5 * 12)) / 4
	}
	
	private func buttonHeight() -> CGFloat {
		return (UIScreen.main.bounds.width - (5 * 12)) / 4
	}
	
}

struct CalculatorButton_Previews: PreviewProvider {
		static var previews: some View {
			CalculatorButtonView(button: .one, handler: nil)
		}
}
