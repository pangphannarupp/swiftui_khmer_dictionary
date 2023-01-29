//
//  book_mark_screen.swift
//  khmer_dictionary
//
//  Created by Pang Phanna on 28/1/23.
//

import SwiftUI

struct book_mark_screen: View {
    
    @EnvironmentObject var router: TabRouter
    
    var body: some View {
        NavigationView {
            List {
                ForEach(wordList, id: \.self) { item in
                    NavigationLink {
                        Text(item.word!)
                    } label: {
                        Text(item.word!)
                    }
                }
            }
            .navigationTitle("ពាក្យចងចាំ")
        }
    }
}

struct book_mark_screen_Previews: PreviewProvider {
    static var previews: some View {
        book_mark_screen()
            .environmentObject(TabRouter())
    }
}
