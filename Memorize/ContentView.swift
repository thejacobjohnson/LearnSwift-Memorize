//
//  ContentView.swift
//  Memorize
//
//  Created by Jacob Johnson on 6/5/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            CardView(cardEmoji:"😅")
            CardView(cardEmoji:"🙃")
            CardView(cardEmoji:"🤦‍♂️")
            CardView(cardEmoji:"😆")
        }
        .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
            .padding()
    }
}

struct CardView: View {
    @State var isFaceUp = false
    var cardEmoji: String
    var body: some View {
        ZStack {
            let cardbase = RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
            if isFaceUp {
                cardbase
                    .fill(.white)
                    .strokeBorder(style: StrokeStyle(lineWidth: 5))
                Text(cardEmoji).font(.largeTitle)
            } else {
                cardbase.fill(.blue)
            }
        }.onTapGesture {
            isFaceUp.toggle()
        }
    }
}



#Preview {
    ContentView()
}
