//
//  ContentView.swift
//  Wordle Suggestions
//
//  Created by Luthfor Khan on 2/18/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HStack {
                ForEach((1...5), id: \.self){
                    BoxView(index: $0)
                }
            }
            
            KeyboardView()
                .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
