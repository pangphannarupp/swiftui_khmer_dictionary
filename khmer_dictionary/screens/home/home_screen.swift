//
//  home_screen.swift
//  khmer_dictionary
//
//  Created by Pang Phanna on 28/1/23.
//

import SwiftUI

struct home_screen: View {
    
    @EnvironmentObject var router: TabRouter
    
    @State private var searchText: String = ""
    @ObservedObject private var data = Json()
    
    var body: some View {
        NavigationView {
            List {
                ForEach(searchResults, id: \.self) { item in
                    NavigationLink(
                        destination: definition_screen(
                            word: item
                        )
                        .navigationBarTitle("", displayMode: .inline)
                        
                    ) {
                        Text(item.word!)
                    }
                }
            }
            .navigationTitle("វចនានុក្រមខ្មែរ")
            .searchable(text: $searchText)
        }
    }
    
    var searchResults: [Word] {
        if searchText.isEmpty {
            return data.json
        } else {
            return data.json.filter { $0.word!.contains(searchText) || $0.definition!.contains(searchText) }
        }
    }
}

struct home_screen_Previews: PreviewProvider {
    static var previews: some View {
        home_screen()
            .environmentObject(TabRouter())
    }
}
