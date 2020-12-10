//
//  ContentView.swift
//  YCombinator News Reader
//
//  Created by Sandun Liyanage on 12/10/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            
            List(posts) { post in
                Text(post.title)
            }
            .navigationBarTitle(
                Text("YCombinator News")
            )
        }
    }
}

struct Post: Identifiable {
    var id: String
    let title: String
}

let posts = [
    Post(id: "1", title: "bla bla 1"),
    Post(id: "2", title: "bla bla 2"),
    Post(id: "3", title: "bla bla 3"),
    Post(id: "4", title: "bla bla 4"),
    Post(id: "5", title: "bla bla 5")
]

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 12 Pro")
    }
}
