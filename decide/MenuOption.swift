//
//  MenuOption.swift
//  decide
//
//  Created by Uditi Sharma on 12/30/19.
//  Copyright © 2019 Uditi Sharma. All rights reserved.
//
import UIKit
enum MenuOption : Int, CustomStringConvertible {
    
    
    case graphs
    case Settings
    case Profile
    
    var description: String {
        switch self {
        case .graphs: return "graphs"
        case .Settings: return "Settings"
        case .Profile: return "Profile"
        }
    }
    
}
