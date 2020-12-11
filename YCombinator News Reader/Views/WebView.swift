//
//  WebView.swift
//  YCombinator News Reader
//
//  Created by Sandun Liyanage on 12/11/20.
//

import SwiftUI
import WebKit


struct WebView: View {
    
    let url: String?
    var body: some View {
        WebKitWebView(urlString: url)
    }
}



struct WebKitWebView: UIViewRepresentable {
    let urlString: String?
    
    func makeUIView(context: Context) -> WebKitWebView.UIViewType {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        if let safeURL = urlString{
            if let url = URL(string: safeURL){
                let request = URLRequest(url: url)
                uiView.load(request)
            }
            
        }
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        WebView(url: "https://www.apple.com")
            .previewLayout(.sizeThatFits)
    }
}
