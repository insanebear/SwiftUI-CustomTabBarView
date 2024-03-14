//
//  TabItem.swift
//  CustomTabBarView
//
//  Created by Yurim Jayde Jeong on 3/14/24.
//

import Foundation

enum TabItem: Int, CaseIterable, Identifiable {
    var id: Int { rawValue }
    
    case home, my, log
    
    var title: String {
        switch self {
            
        case .home:
            return "HOME"
        case .my:
            return "MY"
        case .log:
            return "LOG"
        }
    }
    
    var icon: String {
        switch self {
            
        case .home:
            return "house"
        case .my:
            return "person"
        case .log:
            return "list.bullet"
        }
    }
}
