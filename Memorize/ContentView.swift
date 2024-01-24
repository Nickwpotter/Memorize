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
    var isFaceUp: Bool = false
    var body: some View{
        ZStack {
            if isFaceUp == true {
                RoundedRectangle(cornerRadius: 12)
                    .foregroundColor(.white)
                RoundedRectangle(cornerRadius: 12)
                    .strokeBorder(lineWidth: 2)
                Text("👻")
                    .font(.largeTitle)
            } else {
                RoundedRectangle(cornerRadius: 12)
                    .foregroundColor(.orange)
            }
        }
    }
}



#Preview {
    ContentView()
}
