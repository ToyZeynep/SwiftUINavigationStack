//
//  SecondScreen.swift
//  SwiftUINavigationStack
//
//  Created by Zeynep Toy on 29.05.2024.
//

import SwiftUI

struct SecondScreen: View {
    @EnvironmentObject var navigationManager: NavigationManager
    var data: String
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Second Screen")
            Text("Received Data: \(data)")
            Button("Go to Third Screen") {
                navigationManager.path.append(Screen.thirdScreen)
            }
            Button("Go Back") {
                navigationManager.path.removeLast()
            }
        }
        .navigationTitle("Second Screen")
    }
}


#Preview {
    SecondScreen(data: "Bu bir datadır")
}
