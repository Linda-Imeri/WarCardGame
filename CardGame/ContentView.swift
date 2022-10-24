//
//  ContentView.swift
//  CardGame
//
//  Created by Linda Imeri on 24.10.22.
//

import SwiftUI

struct ContentView: View {
    //MARK: Properties
    @State private var playerCard = "back"
    @State private var cpuCard = "back"
    @State private var playerScore = 0
    @State private var cpuScore = 0
    private let backgroundImage = "background"
    private let logoImage = "logo"
    
    var body: some View {
        VStack{
            Image(logoImage).resizable().aspectRatio(contentMode: .fit)
                .edgesIgnoringSafeArea(.all)
                .frame(width: 170, height: 150)
            Text("WAR GAME").font(.headline)
            Spacer()
            HStack{
                Spacer()
                Image(playerCard)
                Spacer()
                Image(cpuCard)
                Spacer()
            }
            Spacer()
            Button {
                //Generate random numbers for images
                let playerRand = randomImage()
                let cpuRand = randomImage()
                
                //Update Cards
                playerCard = "card" + String(playerRand)
                cpuCard = "card" + String(cpuRand)
                
                //Update Scores
                if(playerRand > cpuRand){
                    playerScore += 1
                }
                else if(playerRand < cpuRand){
                    cpuScore += 1
                }
            } label: {
                Image("dealbutton").padding()
            }
            Button {
                //Start again
                playerCard = "back"
                cpuCard = "back"
                playerScore = 0
                cpuScore = 0 
            } label: {
                Image("restart").resizable()
                    .frame(width: 50, height: 50)
            }
            Spacer()
            HStack{
                Spacer()
                VStack{
                    Text("Player").font(.title)
                        .padding(.bottom,10)
                    Text("\(playerScore)").font(.largeTitle)
                }
                Spacer()
                VStack{
                    Text("Computer").font(.title)
                        .padding(.bottom,10)
                    Text("\(cpuScore)").font(.largeTitle)
                }
                Spacer()
            }
        }
        .background(
                Image(backgroundImage)
                    .resizable()
                    .edgesIgnoringSafeArea(.all)
            )
        .foregroundColor(Color.white)
    }
    func randomImage() -> Int{
        let randNum = Int.random(in: 2...14)
        return randNum
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
