//
//  APIService.swift
//  PortfolioProject
//
//

import Foundation
import UIKit
import SwiftUI

extension NSMutableData {

  func appendString(_ string: String) {
    let data = string.data(using: String.Encoding.utf8, allowLossyConversion: true)
    append(data!)
  }
}

class APIService {
  static let sharedInstance = APIService()
}

enum EndpointCases: Endpoint {

  case news

  var bodyFormData: NSMutableData? {
    return nil
  }

  var httpMethod: String {
    switch self {
    case .news:
      return "GET"

    default:
      return "GET"
    }
  }

  var baseURLString: String {
    switch self {
    case .news:
      return "https://newsapi.org/v2"

    default:
      return ""
    }
  }

  var path: String {
    switch self {
    case .news:
      return "/everything?q=tesla&from=2022-07-08&sortBy=publishedAt&apiKey=cebbb13058aa41d08f9c8b3263efbbd4"

    }
  }

  var headers: [String: Any]? {
    switch self {
    case .news:
      return [
        "user-agent": "TestProject-Mobile-ios",
      ]
    default:
      return nil
    }
  }

  var body: [String: Any]? {
   return nil
  }
}

protocol Endpoint {
  var httpMethod: String { get }
  var baseURLString: String { get }
  var path: String { get }
  var headers: [String: Any]? { get }
  var body: [String: Any]? { get }
  var bodyFormData: NSMutableData? { get }
}

extension Endpoint {
  // a default extension that creates the full URL
  var url: String {
    let stringUrl = baseURLString + path
    return stringUrl.addingPercentEncoding(withAllowedCharacters: NSCharacterSet.urlQueryAllowed)!
  }
}

class Worker {

  func baseRequest(endpoint: Endpoint, completion: @escaping (Data?, URLResponse?, AppError?) -> Void) {

    let session = URLSession.shared

    // URL
    let url = URL(string: endpoint.url)!
    var urlRequest = URLRequest(url: url)

    // HTTP Method
    urlRequest.httpMethod = endpoint.httpMethod

   // let dispatch = DispatchGroup()

  //  dispatch.enter()

   // dispatch.notify(queue: .main) {
      // HTTP Headers
      endpoint.headers?.forEach({ header in
        urlRequest.setValue(header.value as? String, forHTTPHeaderField: header.key)
      })

      if let body = endpoint.body {
        do {
          let jsonData = try JSONSerialization.data(withJSONObject: body, options: .prettyPrinted)
          urlRequest.httpBody = jsonData
          urlRequest.setValue("application/json", forHTTPHeaderField: "Content-type")
        } catch {
          print(error.localizedDescription)
        }
      } else {
        urlRequest.httpBody = endpoint.bodyFormData as? Data

        let boundary = "Boundary-12345"
        urlRequest.setValue("multipart/form-data; boundary=\(boundary)", forHTTPHeaderField: "Content-Type")
      }
      
      print("HTTP REQUEST --------- ")
      print(urlRequest.description)

      let task = session.dataTask(with: urlRequest) { data, response, _ in

        if let httpResponse = response as? HTTPURLResponse {

          print("HTTP RESPONSE --------- ")
          print(httpResponse.statusCode)

          if httpResponse.statusCode != 200 {
            let errorGen = AppError.networkError(code: httpResponse.statusCode)
            completion(data, response, errorGen)
          } else {
            completion(data, response, nil)
          }
        }
      }
      task.resume()
   // }
  }
}

