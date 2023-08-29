//
//  QuestionView.swift
//  MathRacer
//
//  Created by Jesse Turner on 8/28/23.
//

import SwiftUI




struct QuestionView: View {
    @Binding var numberOne:String
    @Binding var numberTwo:String
    @Binding var guess:String
    
    
    var body: some View {
        
        VStack(alignment: .center){
            Text($numberOne.wrappedValue)
            HStack{
                Spacer()
                Text("+")
                Text($numberTwo.wrappedValue)
                Spacer()
                Spacer()
            }
            Text($guess.wrappedValue).foregroundColor(.black).frame(width:250, height:75).background(Rectangle().foregroundColor(.white))
        }.font(.system(size: 80))
    }
}

struct QuestionView_Previews: PreviewProvider {
    static var previews: some View {
        @State var numberOne = "482"
        @State var numberTwo = "234"
        @State var guess:String = ""
        QuestionView(numberOne:$numberOne, numberTwo: $numberTwo, guess:$guess)
    }
}
