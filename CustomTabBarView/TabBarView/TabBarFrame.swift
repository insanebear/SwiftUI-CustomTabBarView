//
//  TabBarFrame.swift
//  CustomTabBarView
//
//  Created by Yurim Jayde Jeong on 3/14/24.
//

import SwiftUI

struct TabBarFrame: View {
    @Binding var selectedTab: TabItem
    
    var body: some View {
        HStack {
            ForEach(TabItem.allCases) { tab in
                TabView(tab: tab, selectedTab: $selectedTab)
            }
        }
    }
}
