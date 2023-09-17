//
//  ContentView.swift
//  EJ4
//
//  Created by -a.s  on 13/09/23.
//

import SwiftUI

struct ContentView: View {
    @State var pressedSuperEasy : Bool = false
    @State var pressedEasy : Bool = false
    @State var pressedIntermedium : Bool = false
    @State var pressedHard : Bool = false
    @State var myBackground : String = "minions_bg"

    let myBackgrounds = ["minions_bg","bg_blue","bg_yellow"]
    
    func changeColor(pressedButton: Bool) -> Color {
        let myForegroundColor =  [Color.blue, Color.yellow]
        if (pressedButton == true) {
            return myForegroundColor[1]
        } else {
            return myForegroundColor[0]
        }
    }
    func changeBackground() {
        let position = Int.random(in: 0 ... myBackgrounds.count-1)
        myBackground = myBackgrounds[position]
        
    }
    
    var body: some View {
        
        ZStack {
            Image(myBackground)
                .scaledToFill()
                .ignoresSafeArea()
            
            VStack {
                
                Button(action: {
                    changeBackground()
                    withAnimation(){
                        self.pressedSuperEasy.toggle()
                    }
                },label : {
                        Text("Super Easy")
                            .font(.title)
                            .bold()
                            .frame(width: 200, height: 40)
                            .foregroundColor(changeColor(pressedButton: pressedSuperEasy))
                            .padding()
                            .background(
                                Color.white)
                            .opacity(0.7)
                            .shadow(radius: 10)
                            .cornerRadius(20)
                        Image("bob")
                            .resizable()
                            .scaleEffect(pressedSuperEasy ? 1.5:1)
                            .frame(width: 100, height: 120)
                    })
                
                
                if(pressedSuperEasy == true) {
                    
                    Text("Es muy facil")
                        .padding(.trailing,100)
                        .font(.system(size: 24))
                        .opacity(1)
                }else {
                    Text("Es muy facil")
                        .padding(.trailing,100)
                        .font(.system(size: 24))
                        .opacity(0)
                }
                
                
                Button(action: {
                    changeBackground()

                    withAnimation(){
                        self.pressedEasy.toggle()
                    }
                },label: {
                    Text("Easy")
                        .font(.title)
                        .bold()
                        .frame(width: 200, height: 40)
                        .foregroundColor(changeColor(pressedButton: pressedEasy))
                        .padding()
                        .background(
                            Color.white)
                        .opacity(0.7)
                        .shadow(radius: 10)
                        .cornerRadius(20)
                    
                    Image("kevin")
                        .resizable()
                        .scaleEffect(pressedEasy ? 1.5:1)
                        .frame(width: 100, height: 120)
                })
                
                if(pressedEasy == true) {
                    Text("Es facil")
                        .padding(.trailing,100)
                        .font(.system(size: 24))
                        .opacity(1)
                }else {
                    Text("Es facil")
                        .padding(.trailing,100)
                        .font(.system(size: 24))
                        .opacity(0)
                }
                
                Button(action: {
                    changeBackground()

                    withAnimation(){
                        self.pressedIntermedium.toggle()
                    }
                },label:{
                    Text("Intermedium")
                        .font(.title)
                        .bold()
                        .frame(width: 200, height: 40)
                        .foregroundColor(changeColor(pressedButton: pressedIntermedium))
                        .padding()
                        .background(
                            Color.white)
                        .opacity(0.7)
                        .shadow(radius: 10)
                        .cornerRadius(20)
                    
                    Image("karl")
                        .resizable()
                        .scaleEffect(pressedIntermedium ? 1.5:1)
                        .frame(width: 100, height: 120)
                })
                
                if(pressedIntermedium == true) {
                    Text("Es menos facil")
                        .padding(.trailing,100)
                        .font(.system(size: 24))
                        .opacity(1)
                }else {
                    Text("Es menos facil")
                        .padding(.trailing,100)
                        .font(.system(size: 24))
                        .opacity(0)
                }
                
                Button(action: {
                    changeBackground()

                    withAnimation(){
                        self.pressedHard.toggle()
                    }
                },label:{
                    Text("Hard")
                        .font(.title)
                        .bold()
                        .frame(width: 200, height: 40)
                        .foregroundColor(changeColor(pressedButton: pressedHard))
                        .padding()
                        .background(
                            Color.white)
                        .opacity(0.7)
                        .shadow(radius: 10)
                        .cornerRadius(20)
                    
                    Image("vampire")
                        .resizable()
                        .scaleEffect(pressedHard ? 1.5:1)
                        .frame(width: 100, height: 120)
                })
                
                if(pressedHard == true) {
                    Text("Es dificil")
                        .padding(.trailing,100)
                        .font(.system(size: 24))
                        .opacity(1)
                }else {
                    Text("Es dificil")
                        .padding(.trailing,100)
                        .font(.system(size: 24))
                        .opacity(0)
                }
            }
        }
        
    }
}
    


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
