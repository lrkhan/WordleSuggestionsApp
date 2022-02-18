//
//  KeyboardView.swift
//  Wordle Suggestions
//
//  Created by Luthfor Khan on 2/18/22.
//

import SwiftUI

struct KeyboardView: View {
    var body: some View {
        VStack {
            HStack{
                ForEach(firstRow, id: \.self){ letter in
                    Keyview(letter: letter)
                }
            }
            HStack{
                ForEach(secdondRow, id: \.self){
                    Keyview(letter: "\($0)")
                }
            }
            HStack{
                ForEach(thirdRow, id: \.self){
                    Keyview(letter: "\($0)")
                }
            }
        }
    }
}

struct KeyboardView_Previews: PreviewProvider {
    static var previews: some View {
        KeyboardView()
    }
}
