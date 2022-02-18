//
//  BoxView.swift
//  Wordle Suggestions
//
//  Created by Luthfor Khan on 2/18/22.
//

import SwiftUI

struct BoxView: View {
    
    var index: Int
    
    private let screen = Screen()
    
    var boxWidth: CGFloat {screen.width * 0.15}
    var boxHeight: CGFloat {screen.height * 0.1 }
    
    var body: some View {
        ZStack {
            Text("\(index)")
                .font(.largeTitle)
                .foregroundColor(.green)
            RoundedRectangle(cornerRadius: 16)
                        .stroke(Color.green, lineWidth: 4)
                        .frame(width: boxWidth, height: boxHeight)
        }
    }
}

struct BoxView_Previews: PreviewProvider {
    static var previews: some View {
        BoxView(index: 1)
    }
}
