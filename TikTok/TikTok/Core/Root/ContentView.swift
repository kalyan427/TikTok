//
//  ContentView.swift
//  TikTok
//
//  Created by kalyan . on 1/31/24.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = ContentViewModel(authService: AuthService())
    
    var body: some View {
        Group {
            if viewModel != nil {
                MainTabView()
            } else {
                LoginView()
            }
        }
    }
}

#Preview {
    ContentView()
}
