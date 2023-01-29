//
//  khmer_dictionaryApp.swift
//  khmer_dictionary
//
//  Created by Pang Phanna on 26/1/23.
//

import SwiftUI

enum Screen {
    case home
    case bookmark
    case history
}

final class TabRouter: ObservableObject {
    @Published var screen: Screen = .home
    
    func change(to screen: Screen) {
        self.screen = screen
    }
}

@main
struct khmer_dictionaryApp: App {
    
    @StateObject var router = TabRouter()
    
    var body: some Scene {
        WindowGroup {
            TabView(selection: $router.screen) {
                home_screen()
                    .tag(Screen.home)
                    .environmentObject(router)
                    .tabItem {
                        Image(systemName: "magnifyingglass")
                    }
                book_mark_screen()
                    .tag(Screen.bookmark)
                    .environmentObject(router)
                    .badge(5)
                    .tabItem {
                        Image(systemName: "book")
                    }
                history_screen()
                    .tag(Screen.history)
                    .environmentObject(router)
                    .tabItem {
                        Image(systemName: "clock")
                    }
            }
        }
    }
}
