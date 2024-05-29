//
//  ScreenManager.swift
//  SwiftUINavigationStack
//
//  Created by Zeynep Toy on 29.05.2024.
//

import Foundation
import SwiftUI
import SecondModule

enum Screen: Hashable {
    case firstScreen
    case secondScreen(data: String)
    case thirdScreen
    case fourthView
    
    @ViewBuilder
    func view() -> some View {
        switch self {
        case .firstScreen:
            FirstScreen()
        case .secondScreen(let data):
            SecondScreen(data: data)
        case .thirdScreen:
            ThirdScreen()
        case .fourthView:
            FourthView()
        }
    }
}
