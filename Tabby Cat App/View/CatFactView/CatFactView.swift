//
//  CatFactView.swift
//  Tabby Cat App
//
//  Created by Minaga Ekanayake on 06/10/2023.
//

import SwiftUI

struct CatFactView: View {
    
    @StateObject var catFactsManager = CatFactsManager()
    
    var body: some View {
        VStack{
            if let catFact = catFactsManager.catFact{
                Text(catFact.fact)
                    .multilineTextAlignment(.center)
                    .font(.title)
                    .padding()
            } else {
                ProgressView()
                    .progressViewStyle(.circular)
            }
            Button(action: {
                catFactsManager.getCatFact()

            }, label: {
                Text("New Fact")
                    .padding()
                    .foregroundColor(.white)
                    .background(Color(.blue))
                    .cornerRadius(40)
            })
            .padding(.top)
        }
            .onAppear {
                catFactsManager.getCatFact()
            }
    }
}

#Preview {
    CatFactView()
}
