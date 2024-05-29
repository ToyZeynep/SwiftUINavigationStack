//
//  ScreenManager.swift
//  SwiftUINavigationStack
//
//  Created by Zeynep Toy on 29.05.2024.
//

import Foundation
import SwiftUI

enum Screen: Hashable {
    case firstScreen
    case secondScreen(data: String)
    case thirdScreen
    
    @ViewBuilder
    func view() -> some View {
        switch self {
        case .firstScreen:
            FirstScreen()
        case .secondScreen(let data):
            SecondScreen(data: data)
        case .thirdScreen:
            ThirdScreen()
        }
    }
}
