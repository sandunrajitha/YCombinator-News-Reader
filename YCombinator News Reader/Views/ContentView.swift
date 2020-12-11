//
//  ContentView.swift
//  YCombinator News Reader
//
//  Created by Sandun Liyanage on 12/10/20.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        NavigationView {
            
            List(networkManager.posts) { post in
                NavigationLink(
                    destination: DetailView(post: post),
                    label: {
                        HStack {
                            Text(String(post.points))
                            Text(post.title)
                        }
                    })
                
            }
            .navigationBarTitle(
                Text("YCombinator News")
            )
        }
        
        .onAppear(perform: {
            networkManager.fetchData()
        })
    }

}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 12 Pro")
    }
}
