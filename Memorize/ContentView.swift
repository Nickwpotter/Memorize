//
//  ContentView.swift
//  Memorize
//
//  Created by Nick Potter on 1/24/24.
//

import SwiftUI

struct ContentView: View {
//    let emojis: Array<String> = ["👻", "☠️", "🤡", "🎯"]
//    let emojis: [String] = ["👻", "☠️", "🤡", "🎯"]
    let emojis = ["👻", "☠️", "🤡", "🎯"] // inference example we didn't specify type

    var body: some View {
        HStack {
            ForEach(emojis.indices, id: \.self) { index in
                CardView(content: emojis[index])
            }
        }
        .imageScale(.small)
        .foregroundColor(.orange)
        .padding()

    }
}

struct CardView: View{
    let content:String
    @State var isFaceUp = false
    
    var body: some View{
        ZStack {
            let base: RoundedRectangle = RoundedRectangle(cornerRadius: 12)
            if isFaceUp {
                base.foregroundColor(.white)
                base.strokeBorder(lineWidth: 2)
                Text(content).font(.largeTitle)
            } else {
                base.foregroundColor(.orange)
            }
        }
        .onTapGesture {
            isFaceUp.toggle()
        }
    }
}



#Preview {
    ContentView()
}
