//
//  PortfolioProjectApp.swift
//  Shared
//
//  Created by Romain Boyer on 05/08/2022.
//

import SwiftUI

@main
struct PortfolioProjectApp: App {
    var body: some Scene {
        WindowGroup {
          NewsView(viewModel: NewsView.ViewModel(jsondata: Data()))
        }
    }
}
