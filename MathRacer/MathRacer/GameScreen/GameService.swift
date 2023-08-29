//
//  GameService.swift
//  MathRacer
//
//  Created by Jesse Turner on 8/28/23.
//

import Foundation



enum isCorrect{
    case undetermined, correct, incorrect
}


struct Question{
    var numberOne:String = String(Int.random(in: 300...999))
    var numberTwo:String = String(Int.random(in: 300...999))
    var isCorrect:isCorrect = .undetermined
    
    
    mutating func getCorrect() -> Int{
        return (Int(numberOne) ?? 0) + (Int(numberTwo) ?? 0)
    }
    
    mutating func reset(){
        self.numberOne = String(Int.random(in: 300...999))
        self.numberTwo = String(Int.random(in: 300...999))
        
    }
}
struct Player{
    var question:Question = Question()
    var correct:Int = 9
    
    
    
}
