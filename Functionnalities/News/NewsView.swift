//
//  ContentView.swift
//  Shared
//
//  Created by Romain Boyer on 05/08/2022.
//

import SwiftUI
import SDWebImageSwiftUI

extension NewsListView {
  @MainActor class ViewModel: ObservableObject {
    @Published var news = [New]()
    @Published var shouldShowDetail = false
    @Published var selectedNew: New?

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
          VStack (spacing: 10) {
            if let uri = new.urlToImage {
              WebImage(url: URL(string: uri))
                .resizable()
                .placeholder {
                  Rectangle().foregroundColor(.gray)
                }
                .indicator(.activity)
                .transition(.fade(duration: 0.5))
                .scaledToFit()
            }
            Text(new.title!)
          }
          .onTapGesture(perform: {
            viewModel.selectedNew = new
            viewModel.shouldShowDetail = true
          })
          .sheet(isPresented: $viewModel.shouldShowDetail) {
            VStack (spacing: 10) {
              if let uri = viewModel.selectedNew?.urlToImage {
                WebImage(url: URL(string: uri))
                  .resizable()
                  .placeholder {
                    Rectangle().foregroundColor(.gray)
                  }
                  .indicator(.activity)
                  .transition(.fade(duration: 0.5))
                  .scaledToFit()
              }
              Text(viewModel.selectedNew?.title ?? "")
              Text(viewModel.selectedNew?.desc ?? "")
              Text(viewModel.selectedNew?.content ?? "")
            }
          }
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

