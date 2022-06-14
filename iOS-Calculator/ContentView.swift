//
//  ContentView.swift
//  iOS-Calculator
//
//  Created by Mostafa Davoodi on 6/13/22.
//

import SwiftUI

struct ContentView: View {
	
	let buttons: [[CalculatorButton]] = [
		[.ac, .plusMinus, .percent, .divide],
		[.seven, .eight, .nine, .multiply],
		[.four, .five, .six, .minus],
		[.one, .two, .three, .plus],
		[.zero, .decimal, .equals]
	]
//	#1
//	@State private var dispalyValue = ""
	@EnvironmentObject var env: GlobalEnvironment
	
		
	var body: some View {
		ZStack(alignment: .bottom) {
			Color.black.ignoresSafeArea()
			VStack(spacing: 12) {
				HStack {
					Spacer()
//					Text(dispalyValue)
					Text(env.display)
						.foregroundColor(.white)
						.font(.system(size: 64))
					}
					
				ForEach(buttons, id: \.self) { row in
					HStack(spacing: 12) {
						ForEach(row, id: \.self) { button in
//							#1
//							CalculatorButtonView(button: button) {
//								self.dispalyValue = button.title
//							}
							CalculatorButtonView(button: button, handler: nil)
						}
					}
				}
			}.padding(.bottom)
		}
	}
}



struct ContentView_Previews: PreviewProvider {
		static var previews: some View {
//			#1
//        ContentView()
			ContentView().environmentObject(GlobalEnvironment())
		}
}
