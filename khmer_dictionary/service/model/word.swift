//
//  word.swift
//  khmer_dictionary
//
//  Created by Pang Phanna on 29/1/23.
//

import Foundation

struct Word: Hashable, Identifiable, Decodable {
    var id: Int?
    var word: String?
    var definition: String?
    
    init(id: Int?, word: String?, definition: String?) {
        self.id = id
        self.word = word
        self.definition = definition
    }
}
