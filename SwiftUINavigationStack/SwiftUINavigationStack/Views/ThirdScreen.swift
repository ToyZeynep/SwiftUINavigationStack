//
//  ThirdScreen.swift
//  SwiftUINavigationStack
//
//  Created by Zeynep Toy on 29.05.2024.
//

import SwiftUI

struct ThirdScreen: View {
    @EnvironmentObject var navigationManager: NavigationManager
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Third Screen")
            Button("Go Back") {
                navigationManager.path.removeLast()
            }
        }
        .navigationTitle("Third Screen")
    }
}


#Preview {
    ThirdScreen()
}
