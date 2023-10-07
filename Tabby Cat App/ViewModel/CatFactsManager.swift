//
//  CatFactsManager.swift
//  Tabby Cat App
//
//  Created by Minaga Ekanayake on 06/10/2023.
//

import SwiftUI

class CatFactsManager: ObservableObject {
    
    @Published var catFact: CatFact?
    let apiURL = URL(string: "https://catfact.ninja/fact")!
    
    func getCatFact(){
        catFact = nil
        
        Task{
            let (data, _) = try await URLSession.shared.data(from: apiURL)
            print("Got the data")
            print(String(data: data, encoding: .utf8))
            
            try await MainActor.run {
                self.catFact = try JSONDecoder().decode(CatFact.self, from: data)
            }
        }
    }
}
