//
//  NetworkManager.swift
//  YCombinator News Reader
//
//  Created by Sandun Liyanage on 12/11/20.
//

import Foundation

class NetworkManager {
    func fetchData() {
        
        if let url = URL(string: "https://hn.algolia.com/api/v1/search?tags=front_page"){
        
        let session = URLSession.shared.dataTask(with: url) { (data, response, error) in
            if let e = error{
                print("error\(e)")
            } else {
//                print(response)
                
                if let safeData = data{
                    let decoder = JSONDecoder()
                    do{
                        let decodedData = try decoder.decode(NewsList.self, from: safeData)
                        print(decodedData.hits[0].title)
                        print(decodedData.hits[0].points)
                    }catch{
                        print(error)
                    }
                } else {
                    print("data was null")
                }
            }
        }
        
        session.resume()
        }
    }
}
