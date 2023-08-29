//
//  SwiftUIView.swift
//  MathRacer
//
//  Created by Jesse Turner on 8/28/23.
//

import SwiftUI

struct KeyButton: View{
    @Binding var currentGuess: String
    @Binding var user:Player
    var text:String
    var body: some View {
        Button{
            //Delete a number
           if text == "<-"{
               currentGuess = String(currentGuess.dropLast(1))
            }
            //Check if correct
            else if text == "✔️"{
                //correct
                if currentGuess == String(user.question.getCorrect()){
                    user.question.isCorrect = .correct
                    user.correct += 1
                    print(user.correct)
                   
                }
                //Wrong
                else{
                    user.question.isCorrect = .incorrect
                    
                }
                //reset the question
                user.question = Question()
                currentGuess = ""
                
            }
            else{
                currentGuess += text
            }
                    
        } label: {
            Text(text).foregroundColor(.black).frame(width:85, height:85).font(.largeTitle).background(RoundedRectangle(cornerRadius: 10))
        }

    
    }
}

struct KeyBoardView: View {
    @Binding var currentGuess:String
    @Binding var user:Player
    
    var body: some View {
        
            VStack{
                HStack{
                    Spacer()
                    KeyButton(currentGuess:$currentGuess,user:$user,text:"1")
                    Spacer()
                    KeyButton(currentGuess:$currentGuess,user:$user,text:"2")
                    Spacer()
                    KeyButton(currentGuess:$currentGuess,user:$user,text:"3")
                    Spacer()
                }
                HStack{
                    Spacer()
                  KeyButton(currentGuess:$currentGuess,user:$user,text:"4")
                    Spacer()
                    KeyButton(currentGuess:$currentGuess,user:$user,text:"5")
                    Spacer()
                    KeyButton(currentGuess:$currentGuess,user:$user,text:"6")
                    Spacer()
                }
                HStack{
                    Spacer()
                  KeyButton(currentGuess:$currentGuess,user:$user,text:"7")
                    Spacer()
                    KeyButton(currentGuess:$currentGuess,user:$user,text:"8")
                    Spacer()
                    KeyButton(currentGuess:$currentGuess,user:$user,text:"9")
                    Spacer()
                }
                HStack{
                    Spacer()
                  KeyButton(currentGuess:$currentGuess,user:$user,text:"<-")
                    Spacer()
                    KeyButton(currentGuess:$currentGuess,user:$user,text:"0")
                    Spacer()
                    KeyButton(currentGuess:$currentGuess,user:$user,text:"✔️")
                    Spacer()
                }
            }
            
      
        
    }
}

struct SwiftUIView_Previews:
   PreviewProvider {
    
    
    static var previews: some View {
        @State var currentGuess:String = ""
        @State var user:Player = Player()

        KeyBoardView(currentGuess: $currentGuess,user:$user)
    }
}
