//
//  Keyview.swift
//  Wordle Suggestions
//
//  Created by Luthfor Khan on 2/18/22.
//

import SwiftUI

struct Keyview: View {
    var letter: String
    
    @State var numberOfTaps: Int = 0
    @State var buttonColor: Color = .gray
    
    let screen = Screen()
    private var screenWidth: CGFloat { screen.width * 0.07}
    private var screenHeight: CGFloat { screen.height * 0.05 }
    
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 10)
                .foregroundColor(buttonColor)
                .frame(width: screenWidth, height: screenHeight)
            Text(letter.uppercased())
                .foregroundColor(.white)
        }
        .onTapGesture {
            numberOfTaps = buttonTapped()
            
            print("letter: \(letter), tapped: \(numberOfTaps)")
            
        }
    }
    
    func buttonTapped() -> Int {
        var num = numberOfTaps + 1
        
        if num > 2 {
            num = 0
        }
        
        switch num {
        case 1:
            buttonColor = .yellow
        case 2:
            buttonColor = .black
        default:
            buttonColor = .gray
        }
        
        
        return num
    }
}

struct Keyview_Previews: PreviewProvider {
    static var previews: some View {
        Keyview(letter: "g")
    }
}

