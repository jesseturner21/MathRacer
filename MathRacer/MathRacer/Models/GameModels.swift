//
//  GameModels.swift
//  MathRacer
//
//  Created by Jesse Turner on 8/28/23.
//

import Foundation

enum GameType{
    case single, online, undetermind
    
    var discription: String {
        switch self {
        case .single:
            return "Practice on your own"
        case .online:
            return "Play against someone online"
        case .undetermind:
            return ""
        }
    }
    
    
}
