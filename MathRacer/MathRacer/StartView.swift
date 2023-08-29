//
//  ContentView.swift
//  MathRacer
//
//  Created by Jesse Turner on 8/28/23.
//

import SwiftUI

struct StartView: View {
    @State private var gameType: GameType = .undetermind
    @State private var yourName:String = ""
    @FocusState private var focus:Bool
    @State private var startGame:Bool = false
    
    
    
    var body: some View {
        NavigationStack{
            ZStack{
                Color(.black).ignoresSafeArea()
                
                VStack{
                    
                    VStack {
                        Picker("Select Game", selection: $gameType){
                            Text("Select Game Type").tag(GameType.undetermind)
                            Text("Single").tag(GameType.single)
                            Text("Online").tag(GameType.online)
                        }
                    }
                    .padding()
                    .background(RoundedRectangle(cornerRadius: 10)).foregroundColor(.red)
                    
                    Text(gameType.discription).padding()
                        .foregroundColor(.white)
                    VStack{
                        switch gameType{
                        case .online, .single:
                            TextField("Your Name:", text: $yourName).padding().background(RoundedRectangle(cornerRadius: 4).foregroundColor(.white))
                        case .undetermind:
                            EmptyView()
                        }
                    }.focused($focus)
                    if gameType != .online{
                        Button("Start Game") {
                            focus = false
                            startGame.toggle()
                        }.padding().background(RoundedRectangle(cornerRadius: 4).foregroundColor(.blue)).disabled(gameType == .undetermind || yourName == "")
                    }
                    Image("MathRacerICON").resizable().frame(width: 300, height:300)
                    
                    
                }.fullScreenCover(isPresented: $startGame){
                    GameView()
                }.navigationTitle("MathRacer")//does not show up
            }
        }.navigationTitle("Math Racer")
    }
}


struct StartView_Previews: PreviewProvider {
    static var previews: some View {
        StartView()
    }
}
