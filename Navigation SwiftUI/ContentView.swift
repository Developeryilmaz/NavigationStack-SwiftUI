//
//  ContentView.swift
//  Navigation SwiftUI
//
//  Created by YILMAZ ER on 20.05.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            FirstTabView()
                .tabItem {
                    Label("First", systemImage: "plus")
                }
            SecondTabView()
                .tabItem {
                    Label("Second", systemImage: "face.smiling")
                }
            ThridTabView()
                .tabItem {
                    Label("Third", systemImage: "doc.richtext")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
