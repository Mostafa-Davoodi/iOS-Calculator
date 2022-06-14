//
//  iOS_CalculatorApp.swift
//  iOS-Calculator
//
//  Created by Mostafa Davoodi on 6/13/22.
//

import SwiftUI

@main
struct iOS_CalculatorApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(GlobalEnvironment())
        }
    }
}
