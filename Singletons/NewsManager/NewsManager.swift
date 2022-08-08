//
//  NewsManager.swift
//  PortfolioProject (iOS)
//
//  Created by Romain Boyer on 08/08/2022.
//

import Foundation
import ObjectMapper

class NewsManager {
  static let sharedInstance = NewsManager()

  func retrieveAllNews(completion: @escaping ([New]?, AppError?) -> Void) {
    APIService.sharedInstance.news { data, id, error in
      if let error = error {
        print(error)
        completion(nil, error)
      } else {
        print(data)
        do {
          if let jsonDict = try JSONSerialization
            .jsonObject(with: data!, options: []) as? [String: AnyObject] {

            let articlesArray = jsonDict["articles"]  as? [[String: AnyObject]]

            let newsArray = try? Mapper<New>().mapArray(JSONArray: articlesArray!)
                completion(newsArray, nil)
            } else {
              completion(nil, AppError.fonctionalError(message: "Could retrieve news from JSON"))
            }
        }
        catch let error as NSError {
          completion(nil, AppError.fonctionalError(message: "Could retrieve news from JSON"))
        }
      }
    }
  }
}
