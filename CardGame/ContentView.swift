//
//  ContentView.swift
//  CardGame
//
//  Created by Linda Imeri on 24.10.22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            Image("logo").resizable().aspectRatio(contentMode: .fit)
                .edgesIgnoringSafeArea(.all)
                .frame(width: 170, height: 150)
            Text("WAR GAME").font(.headline)
            
            Spacer()
            HStack{
                Spacer()
                Image("card2")
                Spacer()
                Image("card12")
                Spacer()
            }
            Spacer()
            Button {
                
            } label: {
                Image("dealbutton").padding()
            }
            Spacer()
            HStack{
                Spacer()
                VStack{
                    Text("Player").font(.title)
                        .padding(.bottom,10)
                    Text("0").font(.largeTitle)

                }
                Spacer()
                VStack{
                    Text("Computer").font(.title)
                        .padding(.bottom,10)
                    Text("0").font(.largeTitle)
                }
                Spacer()
            }
        }
        .background(
                Image("background")
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
