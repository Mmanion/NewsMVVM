//
//  WebService.swift
//  NewsMVVM
//
//  Created by Matthew Manion on 10/19/19.
//  Copyright © 2019 Matthew Manion. All rights reserved.
//

import Foundation

class Webservice {
    
    func getArticles(url: URL, completion: @escaping ([Article]?) -> ()  ) {
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            
            if let error = error {
                print(error.localizedDescription)
                completion(nil)
            } else if let data = data {
                
                let articleList = try? JSONDecoder().decode(ArtiicleList.self, from: data)
                
                if let articleList = articleList {
                    completion(articleList.articles)
                }
                
                print(articleList?.articles)
                
            }
            
        }.resume()
        
    }
    
    
    
}


