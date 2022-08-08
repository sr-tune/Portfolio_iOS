//
//  AppError.swift
//  ClipDrop
//
//  Created by Romain Boyer on 02/07/2021.
//

import Foundation

enum AppError: Error {
  case responseError(code: Int)
  case networkError(code: Int)
  case fonctionalError(message: String)
  case offline

  func description() -> String {
    switch self {
    case .networkError(let code):
      switch code {

      case 413:
        return "api.error.413"

      case 415:
        return "api.error.415"

      case 403:
        return "api.error.403"

      case 500:
        return "api.error.500"

      case 404:
        return "api.error.404"

      case 402:
        return "api.error.402"

      case 400:
        return "api.error.400"

      default:
        return "api.error.genericCode"

      }

    case .responseError(let code):
      switch code {
      default:
        return "api.error.genericCode"
      }

    case .offline:
      return "network.error.offline"

    case .fonctionalError(let message):
      return message
    }
  }
}

extension AppError: Equatable {
  static func ==(lhs: AppError, rhs: AppError) -> Bool {
    switch lhs {
    case .fonctionalError:
      switch rhs {
      case .fonctionalError:
        return true
      default:
        return false
      }

    case .networkError(let code):
      switch rhs {
      case .networkError(let otherCode):
        if code == otherCode {
          return true
        } else {
          return false
        }

      default:
        return false
      }

    case .responseError(let code):
      switch rhs {
      case .responseError(let otherCode):
        if code == otherCode {
          return true
        } else {
          return false
        }

      default:
        return false
      }

    case .offline:
      switch rhs {
      case .offline:
        return true
      default:
        return false
      }
    }
  }
}

