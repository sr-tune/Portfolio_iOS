//
//  NewModel.swift
//  PortfolioProject (iOS)
//
//  Created by Romain Boyer on 08/08/2022.
//

import Foundation
import ObjectMapper

struct Constants {
  static let authorKey = "author"
  static let titleKey = "title"
  static let descKey = "description"
  static let urlImageKey = "urlToImage"
  static let contentKey = "content"
}

struct New: ImmutableMappable, BaseMappable {
  let ident = UUID().uuidString
  let title: String?
  let desc: String?
  let urlToImage: String?
  let content: String?
  let author : String?

  // var img: String?

  init(map: Map) throws {
    author   = try map.value(Constants.authorKey)
    title   = try map.value(Constants.titleKey)
    desc = try? map.value(Constants.descKey)
    urlToImage = try? map.value(Constants.urlImageKey)
    content = try? map.value(Constants.contentKey)
  }
}

extension New : Identifiable {
  var id: String {
    return ident
  }
}
