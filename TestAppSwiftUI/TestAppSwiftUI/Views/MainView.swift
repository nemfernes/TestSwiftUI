//
//  ContentView.swift
//  TestAppSwiftUI
//
//  Created by MAC on 14.07.2023.
//

import SwiftUI

struct MainView: View {
    
    @State private var selection = 0
    
    var body: some View {
        TabView(selection: $selection) {
            HomeView()
                .tabItem {
                    Image("home_icon")
                    Text("Prompts")
                }.tag(0)
            MyPromptsView()
                .tabItem {
                    selection == 1 ? Image("prompt_icon") : Image("promptInactive_icon")
                    Text("My prompts")
                }.tag(1)
            ChatView()
                .tabItem {
                    Image("chat_icon")
                    Text("Chat")
                }.tag(2)
            FavoriteView()
                .tabItem {
                    Image("fav_icon")
                    Text("Favorite")
                }.tag(3)
            HistoryView()
                .tabItem {
                    selection == 4 ? Image("historyActive_icon") : Image("history_icon")
                    Text("History")
                }.tag(4)
        }.accentColor(Color.mintColor)
            .edgesIgnoringSafeArea(.all)
         .onAppear{
             let tabBarAppearance: UITabBarAppearance = UITabBarAppearance()
             if #available(iOS 13.0, *) {
                 tabBarAppearance.configureWithDefaultBackground()
                 tabBarAppearance.backgroundColor = UIColor.black
                 UITabBar.appearance().standardAppearance = tabBarAppearance
             }
             if #available(iOS 15.0, *) {
                 UITabBar.appearance().scrollEdgeAppearance = tabBarAppearance
             }
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
