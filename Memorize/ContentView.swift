//
//  ContentView.swift
//  Memorize
//
//  Created by Jacob Johnson on 6/5/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        CardView(cardEmoji:"😅")
        .padding()
    }
}

struct CardView: View {
    var isFaceUp: Bool = true
    var cardEmoji: String
    var body: some View {
        ZStack {
            if isFaceUp {
                RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                    .foregroundColor(.white)
                RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                    .strokeBorder(style: StrokeStyle(lineWidth: 5))
                    .foregroundColor(.blue)
                Text(cardEmoji).font(.largeTitle)
            } else {
                RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                    .foregroundColor(.blue)
            }
        }
    }
}



#Preview {
    ContentView()
}
