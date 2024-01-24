//
//  ContentView.swift
//  Memorize
//
//  Created by Nick Potter on 1/24/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            CardView(isFaceUp: true)
            CardView()
            CardView()
            CardView(isFaceUp: true)

        }
        .imageScale(.small)
        .foregroundColor(.orange)
        .padding()

    }
}

struct CardView: View{
    @State var isFaceUp = false
    
    var body: some View{
        ZStack {
            let base: RoundedRectangle = RoundedRectangle(cornerRadius: 12)
            if isFaceUp {
                base.foregroundColor(.white)
                base.strokeBorder(lineWidth: 2)
                Text("👻").font(.largeTitle)
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
