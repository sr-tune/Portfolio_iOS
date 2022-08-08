//
//  ContentView.swift
//  Shared
//
//  Created by Romain Boyer on 05/08/2022.
//

import SwiftUI

//struct ContentView: View {
//  var body: some View {
//    Text("Hello, world!")
//      .padding()
//  }
//}
//
//struct ContentView_Previews: PreviewProvider {
//  static var previews: some View {
//    ContentView()
//  }
//}



extension NewsListView {
  @MainActor class ViewModel: ObservableObject {
    @Published var news = [New]()

    func loadNews() {
      NewsManager.sharedInstance.retrieveAllNews { freshNews, error in
        if let error = error {
          print(error)
        } else {
          if let freshNews = freshNews {
            DispatchQueue.main.async {
              self.news.append(contentsOf: freshNews)
            }
          }
        }
      }
    }
  }
}


struct NewsListView: View {
  @StateObject var viewModel: ViewModel

  var body: some View {

    VStack {
      if viewModel.news.isEmpty {
        Text("No new available")
        Button("refresh") {
          if viewModel.news.isEmpty {
            viewModel.loadNews()
          }
        }
      } else {
        List(viewModel.news) { new in
          Text(new.title!)
        }
      }
    }
    .onAppear {
      if viewModel.news.isEmpty {
        viewModel.loadNews()
      }
    }
  }
}

struct NewsListView_Previews: PreviewProvider {
  static var previews: some View {
    NewsListView(viewModel: NewsListView.ViewModel())
  }
}

