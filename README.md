#  YCombinator News Reader

A news reader app created with SwiftUI that uses the YCombinator News API from Algolia.
https://hn.algolia.com/api
The news reader uses WebKit webview that is implemented to work with SwiftUI.


## Learned while creating this app

* How to create UI using SwiftUI.
* SwiftUI Modifiers.
* SwiftUI NavigationView.
* SwiftUI ListView.
* SwiftUI Navigation.
* WebKit webview.
* Creating reusable components with SwiftUI

## Screens

![yNews](screens/yNews.gif)

### WebKit webview implemented to work with SwiftUI.

```swift

import SwiftUI
import WebKit

struct WebView: UIViewRepresentable {
    let urlString: String?
    
    func makeUIView(context: Context) ->WKWebView {
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


```


>Created as a companion project to The App Brewery's Complete App Development Bootcamp
