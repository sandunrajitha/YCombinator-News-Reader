//
//  DetailView.swift
//  YCombinator News Reader
//
//  Created by Sandun Liyanage on 12/11/20.
//

import SwiftUI

struct DetailView: View {
    var post: NewsItem
    
    var body: some View {
        if let url = post.url{
            WebView(urlString: url)
        } else {
            WebView(urlString: "https://news.ycombinator.com/item?id=\(post.id)")
        }
//        WebView(urlString: url)
    }
}

//struct DetailView_Previews: PreviewProvider {
//    static var previews: some View {
//        DetailView(url: "https://www.google.com")
//    }
//}
