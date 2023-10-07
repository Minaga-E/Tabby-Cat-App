//
//  CatImagesView.swift
//  Tabby Cat App
//
//  Created by Minaga Ekanayake on 06/10/2023.
//

import SwiftUI
import Subsonic

struct CatImagesView: View {
    
    @State var catURL = "https://cataas.com/cat/cat?q="
    
    var body: some View {
        AsyncImage(url: URL(string: catURL)!) { image in

            image
                .resizable()
                .scaledToFit()
                .onAppear{
                    play(sound: "meow.m4a")
                }
            Spacer()
            Button("Load Another"){
                catURL += "1"
                play(sound: "meow.m4a")

            }
            .buttonStyle(.borderedProminent)
        } placeholder: {
            ProgressView()
        }
    }
}

#Preview {
    CatImagesView()
}
