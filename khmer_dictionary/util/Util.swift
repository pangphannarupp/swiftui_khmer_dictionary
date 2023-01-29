//
//  Util.swift
//  khmer_dictionary
//
//  Created by Pang Phanna on 29/1/23.
//

import Foundation

class Util {
    func optimize(text: String) -> String {
        return text
        //.replacingOccurrences(of: "@\\[\\d+:\\d+:(.*?)\\]", with: "", options: .regularExpression, range: nil)
            .replacingOccurrences(of: "<", with: "", options: .literal, range: nil)
            .replacingOccurrences(of: ">", with: "", options: .literal, range: nil)
            .replacingOccurrences(of: "1", with: "", options: .literal, range: nil)
            .replacingOccurrences(of: "2", with: "", options: .literal, range: nil)
            .replacingOccurrences(of: "3", with: "", options: .literal, range: nil)
            .replacingOccurrences(of: "4", with: "", options: .literal, range: nil)
            .replacingOccurrences(of: "5", with: "", options: .literal, range: nil)
            .replacingOccurrences(of: "6", with: "", options: .literal, range: nil)
            .replacingOccurrences(of: "7", with: "", options: .literal, range: nil)
            .replacingOccurrences(of: "8", with: "", options: .literal, range: nil)
            .replacingOccurrences(of: "9", with: "", options: .literal, range: nil)
            .replacingOccurrences(of: "0", with: "", options: .literal, range: nil)
            .replacingOccurrences(of: "\"", with: "", options: .literal, range: nil)
    }
}
