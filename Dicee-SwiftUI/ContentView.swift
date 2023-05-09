//
//  ContentView.swift
//  Dicee-SwiftUI
//
//  Created by Aleksandra Asichka on 2023-05-07.
//

import SwiftUI

struct ContentView: View {
    
    @State var leftDiceeNumber = 1
    @State var rightDiceeNumber = 2
    
    var body: some View {
        ZStack {
            Image("background")
                .resizable()
                .ignoresSafeArea()
            VStack(spacing: 150) {
                Image("diceeLogo")
                HStack {
                    DiceeView(number: leftDiceeNumber)
                    DiceeView(number: rightDiceeNumber)
                }
                Button("Roll") {
                    rightDiceeNumber = Int.random(in: 1...6)
                    leftDiceeNumber = Int.random(in: 1...6)
                }
                .padding(.horizontal)
                .font(.system(size: 40))
                .foregroundColor(.white)
                .bold()
                .background(.red)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct DiceeView: View {
    var number: Int
    var body: some View {
        Image("dice\(number)")
    }
}
