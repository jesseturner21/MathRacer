//
//  GameView.swift
//  MathRacer
//
//  Created by Jesse Turner on 8/28/23.
//

import SwiftUI

struct GameView: View {
    
    @State var user = Player()
    @State var guess = ""
    
    
    
    @Environment(\.dismiss) var dismiss
    var body: some View {
        NavigationStack{
            ZStack{
                Color.black.ignoresSafeArea()
                if user.correct < 10{
                    VStack{
                        QuestionView(numberOne: $user.question.numberOne, numberTwo: $user.question.numberTwo, guess: $guess)
                        KeyBoardView(currentGuess:$guess, user:$user)
                    }.foregroundColor(.white).toolbar{ToolbarItem(placement: .navigationBarTrailing){
                        Button("End Game"){
                            dismiss()
                        }.buttonStyle(.bordered)
                    }
                        
                        
                    }
                }
                else{
                    VStack{
                        Text("Finish!!!!!!")
                        
                    }.foregroundColor(.white).toolbar{ToolbarItem(placement: .navigationBarTrailing){
                        Button("Back"){
                            dismiss()
                        }.buttonStyle(.bordered)
                    }
                        
                    }
                }
                
                
            }.navigationTitle("MathRacer")
        }
    }
    
    struct GameView_Previews: PreviewProvider {
        static var previews: some View {
            GameView()
        }
    }
}
