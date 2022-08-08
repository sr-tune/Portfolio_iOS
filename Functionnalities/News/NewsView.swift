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



extension NewsView {
  @MainActor class ViewModel: ObservableObject {
    @Published var news: [New]?
    @Published var JSONString: String?

    init(jsondata : Data) {

    }
  }
}


struct NewsView: View {
  @StateObject var viewModel: ViewModel

  var body: some View {
    Text("Hello, world!")
      .padding()
  }
}

struct NewsView_Previews: PreviewProvider {
  static var previews: some View {
    NewsView(viewModel: NewsView.ViewModel.init(jsondata: Data()))
  }
}

