//
//  FirstScreen.swift
//  SwiftUINavigationStack
//
//  Created by Zeynep Toy on 29.05.2024.
//

import SwiftUI

struct FirstScreen: View {
    @EnvironmentObject var navigationManager: NavigationManager
    
    var body: some View {
        VStack(spacing: 20) {
            Text("First Screen")
            Button("Go to Second Screen with Data") {
                navigationManager.path.append(Screen.secondScreen(data: "Hello from FirstScreen"))
            }
            Button("Go to Third Screen") {
                navigationManager.path.append(Screen.thirdScreen)
            }
            
            Button("Go to Fourth Screen") { // Yeni buton ekleniyor
                navigationManager.path.append(Screen.fourthView)
            }
        }
        .navigationTitle("First Screen")
    }
}


#Preview {
    FirstScreen()
}
