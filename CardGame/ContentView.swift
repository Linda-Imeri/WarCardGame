//
//  ContentView.swift
//  CardGame
//
//  Created by Linda Imeri on 24.10.22.
//

import SwiftUI

struct ContentView: View {
    //MARK: Properties
    @State private var playerCard = "card4"
    @State private var cpuCard = "card6"
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
                //
            } label: {
                Image("dealbutton").padding()
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
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
