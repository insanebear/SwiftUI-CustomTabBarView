//
//  TabView.swift
//  CustomTabBarView
//
//  Created by Yurim Jayde Jeong on 3/14/24.
//

import SwiftUI

struct TabView: View {
    let tab: TabItem
    @Binding var selectedTab: TabItem
    
    var body: some View {
        Button {
            selectedTab = tab
        } label: {
            VStack (alignment: .center) {
                Image(systemName: tab.icon)
                Text(tab.title)
            }
        }

    }
}
