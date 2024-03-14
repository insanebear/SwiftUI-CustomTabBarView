//
//  ContentView.swift
//  CustomTabBarView
//
//  Created by Yurim Jayde Jeong on 3/14/24.
//

import SwiftUI

struct ContentView: View {
    @State var selectedTab: TabItem = .home
    
    var body: some View {
        ZStack {
            TabContentView(selectedTab: $selectedTab)
            TabBarView(selectedTab: $selectedTab)
        }
    }
}

struct TabContentView: View {
    @Binding var selectedTab: TabItem
    
    var body: some View {
        switch selectedTab {
        case .home:
            HomeView()
        case .my:
            MyView()
        case .log:
            LogView()
        }
    }
}

struct TabBarView: View {
    @Binding var selectedTab: TabItem
    
    var body: some View {
        VStack {
            Spacer()
            TabBarFrame(selectedTab: $selectedTab)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
