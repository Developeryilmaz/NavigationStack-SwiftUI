//
//  FirstTabView.swift
//  Navigation SwiftUI
//
//  Created by YILMAZ ER on 20.05.2023.
//

import SwiftUI

struct FirstTabView: View {
    
    @State private var showSettins = false
    @State private var path = NavigationPath()
    
    var body: some View {
        VStack {
            NavigationStack(path: $path) {
                List {
                    Text("Root View")
                    
                    NavigationLink("Go to detail A", value: "Show AAA")
                    
                    NavigationLink("Go to B", value: "Show BBB")
                    
                    NavigationLink("Go to number 1", value: 1)
                    
                    
                    Button {
                        showSettins.toggle()
                    } label: {
                        Text("Settings")
                    }
                    
                    Section("Old") {
                        NavigationLink("Old link with destination") {
                            VStack {
                                Text("old navigation link")
                                NavigationLink("Go to 2", value: 2)
                            }
                        }
                    }

                }
                .navigationDestination(for: String.self) { textValue in
                    DetailView(text: textValue, path: $path)
                }
                .navigationDestination(for: Int.self) { intValue in
                    DetailView(text: String(intValue), path: $path)
                }
                .navigationDestination(isPresented: $showSettins) {
                    Text("Settings")
                }
                .navigationTitle("Root view")
            }
            VStack {
                Text("Path")
                Text("number of detail views on the stack: \(path.count)")
                
                Button {
                    path.removeLast()
                } label: {
                    Text("go back one view")
                }
                
                Button {
                    path.append("GGG")
                } label: {
                    Text("Show Favorite")
                }

                Button {
                    path = NavigationPath()
                } label: {
                    Text("go to root view")
                }


            }
        }
        

    }
}

struct FirstTabView_Previews: PreviewProvider {
    static var previews: some View {
        FirstTabView()
    }
}
