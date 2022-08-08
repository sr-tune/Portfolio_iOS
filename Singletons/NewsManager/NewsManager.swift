//
//  NewsManager.swift
//  PortfolioProject (iOS)
//
//  Created by Romain Boyer on 08/08/2022.
//

import Foundation

class NewsManager {
  static let sharedInstance = NewsManager()

  func retrieveAllNews(completion: @escaping ([New]?, AppError?) -> Void) {
    APIService.sharedInstance.news { data, id, error in
      if let error = error {
        print(error)
        completion(nil, error)
      } else {
        print(data)
        // parse data
      }
    }
  }
}
