//
//  CounterView.swift
//  MathRacer
//
//  Created by Jesse Turner on 8/29/23.
//

import SwiftUI

struct CounterView: View {
    @Binding var numberCorrect:Int
    var body: some View {
        
        HStack{
            ForEach(0..<numberCorrect){_ in
                Text("  ")
            }
            Image("racecar").resizable().frame(width:100, height:26)
            Spacer()
        }.padding()
        
        
        
    }
}

struct CounterView_Previews: PreviewProvider {
    static var previews: some View {
       @State var number:Int = 10
        
        
        CounterView(numberCorrect:$number)
    }
}
