//
//  APIService + ClipDrop.swift
//  ClipDrop
//
//

import Foundation
import UIKit
import SwiftUI

extension APIService {

  func news(completion: @escaping (Data?, String?, AppError?) -> Void) {
    let newsEndpoint = EndpointCases.news

    Worker().baseRequest(endpoint: newsEndpoint) { (data, _, error) in

      if let error = error {
        if let dataSafe = data {
          print(String(data: dataSafe, encoding: .utf8))
        }
        print("error : \(error.localizedDescription)")
        completion(nil, nil, error)
      }

      if let data = data {
        completion(data, nil, nil)
      } else {
        completion(nil, nil, AppError.fonctionalError(message: "Error with the data"))
      }

    }
  }
}
