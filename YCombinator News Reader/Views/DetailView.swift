//
//  DetailView.swift
//  YCombinator News Reader
//
//  Created by Sandun Liyanage on 12/11/20.
//

import SwiftUI
import WebKit

struct DetailView: View {
    var url: String?
    
    var body: some View {
        WebView(url: url)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url: "https://www.google.com")
    }
}
