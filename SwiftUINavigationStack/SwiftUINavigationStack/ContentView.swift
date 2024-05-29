//
//  ContentView.swift
//  SwiftUINavigationStack
//
//  Created by Zeynep Toy on 29.05.2024.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var navigationManager = NavigationManager()
    
    var body: some View {
        NavigationStack(path: $navigationManager.path) {
            Screen.firstScreen.view()
                .navigationDestination(for: Screen.self) { screen in
                    screen.view()
                }
        }
        .environmentObject(navigationManager)
    }
}

#Preview {
    ContentView()
}

class NavigationManager: ObservableObject {
    @Published var path = NavigationPath()
}
