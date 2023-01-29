//
//  definition_screen.swift
//  khmer_dictionary
//
//  Created by Pang Phanna on 29/1/23.
//

import SwiftUI

struct definition_screen: View {
    //argument
    var word: Word?
    
    //properties
    @State var increaseFontSize: CGFloat = 0
    @State var isPresentedShare: Bool = false
    private let util = Util()
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            action_tab(
                isPresentedShare: $isPresentedShare,
                increaseFontSize: $increaseFontSize,
                word: word!
            )
            
            Text(word!.word!)
                .font(.system(size: 36 + increaseFontSize))
            
            Text(util.optimize(text: word!.definition!))
                .font(.system(size: 18 + increaseFontSize))
                .lineSpacing(12)
            
            Spacer()
        }
        .padding()
    }
}

struct ImageView: View {
    var systemName: String
    
    var body: some View {
        Image(systemName: systemName).resizable().scaledToFit()
            .frame(width: 24, height: 24)
    }
}
