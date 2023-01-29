//
//  json.swift
//  khmer_dictionary
//
//  Created by Pang Phanna on 29/1/23.
//

import Foundation

class Json: ObservableObject {
    @Published var json = [Word]()
    
    init() {
        loadData()
    }
    
    func loadData() {
        let jsonPath = Bundle.main.path(forResource: "database", ofType: "json")
        let url = URL(fileURLWithPath: jsonPath!)
        URLSession.shared.dataTask(with: url) { (data, reponse, error) in
            do {
                if let data = data {
                    let json = try JSONDecoder().decode([Word].self, from: data)
                    DispatchQueue.main.sync {
                        self.json = json
                    }
                } else {
                    print("No data")
                }
            } catch {
                print(error)
            }
        }.resume()
    }
}
