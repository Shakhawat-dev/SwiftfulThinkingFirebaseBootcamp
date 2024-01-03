//
//  ContentView.swift
//  SwiftfulThinkingFirebaseBootcamp
//
//  Created by Shakhawat Hossain Shahin on 6/19/23.
//

import SwiftUI

struct DownloadModel: Codable {
    let id: String
    let number: Int
}

class ContentViewModel: ObservableObject {
    @Published var data: DownloadModel?
}

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
            
            ScrollView(.vertical) {
                VStack {
                    ForEach( 1...50, id: \.self) { item in
                        HStack {
                            Text("Number: \(item)")
                                .foregroundColor(.black)
                            
                            Image(systemName: "checkmark")
                        }
                    }
                }
            }
            
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
