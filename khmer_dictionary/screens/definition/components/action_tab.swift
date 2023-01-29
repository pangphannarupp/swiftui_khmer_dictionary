//
//  action_tab.swift
//  khmer_dictionary
//
//  Created by 임재욱 on 29/1/23.
//

import SwiftUI

struct action_tab: View {
    
    @Binding var isPresentedShare: Bool
    @Binding var increaseFontSize: CGFloat
    let word: Word
    
    private let util = Util()
    
    var body: some View {
        HStack(spacing: 20) {
            Spacer()
            
            ImageView(systemName: "minus")
                .onTapGesture {
                    increaseFontSize -= increaseFontSize <= 0 ? 0 : 2
                    
                }
            ImageView(systemName: "plus")
                .onTapGesture {
                    increaseFontSize += increaseFontSize >= 8 ? 0 : 2
                    
                }
            ImageView(systemName: "book")
                .onTapGesture {
                    print("You add bookmark")
                }
            ImageView(systemName: "square.and.arrow.up")
                .onTapGesture {
                    isPresentedShare.toggle()
                }
                .sheet(isPresented: $isPresentedShare) {
                    ShareViewController(text: word.word! + " " + util.optimize(text: word.definition!))
                }
        }
    }
}
