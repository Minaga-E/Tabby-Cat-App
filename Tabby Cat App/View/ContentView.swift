//
//  ContentView.swift
//  Tabby Cat App
//
//  Created by Minaga Ekanayake on 06/10/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            CatFactView()
                .tabItem {
                    Label("Get A Fact", systemImage: "lightbulb")
                    
                }
            CatImagesView()
                .tabItem {
                    Label("Random Cat", systemImage: "photo")
                }
            CatBounceView()
                .tabItem {
                    Label("Bouncy Cat", systemImage: "arrowshape.bounce.right")
                }
            CatGalleryView()
                .tabItem {
                    Label("Cat Gallery", systemImage: "photo.stack")
                }
            
        }
    }
}

#Preview {
    ContentView()
}
