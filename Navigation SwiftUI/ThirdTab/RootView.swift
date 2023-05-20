//
//  RootView.swift
//  Navigation SwiftUI
//
//  Created by YILMAZ ER on 20.05.2023.
//

import SwiftUI

struct RootView: View {
    
    @ObservedObject var modelData: ModelDataManager
    
    var body: some View {
        List {
            Section("Song") {
                ForEach(modelData.songs) { song in
                    NavigationLink(song.title, value: SelectionState.song(song))
                }
            }
            
            Section("Movie") {
                ForEach(modelData.movies) { movie in
                    NavigationLink(movie.title, value: SelectionState.movie(movie))
                }
            }
            
            Section("Book") {
                ForEach(modelData.books) { book in
                    NavigationLink(book.title, value: SelectionState.book(book))
                }
            }
            NavigationLink("Settings", value: SelectionState.settings)
        }
        .navigationTitle("Root View")
         
        
    }
}

struct RootView_Previews: PreviewProvider {
    static var previews: some View {
        RootView(modelData: ModelDataManager())
    }
}
