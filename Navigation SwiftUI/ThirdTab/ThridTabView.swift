//
//  ThridTabView.swift
//  Navigation SwiftUI
//
//  Created by YILMAZ ER on 20.05.2023.
//

import SwiftUI



struct ThridTabView: View {
    
    @StateObject var modelDataManager = ModelDataManager()
    @StateObject var navigationStateManager = NavigationStateManager()
    @SceneStorage("navigationState") var navigationStateData: Data?
    
    var body: some View {
        NavigationStack(path: $navigationStateManager.selectionPath) {
            RootView(modelData: modelDataManager)
                .navigationDestination(for: SelectionState.self) { state in
                        switch state {
                        case .song(let song):
                            SongDetailView(song: song)
                        case .movie(let movie):
                            MovieDetailView(movie: movie)
                        case .book(let book):
                            BookDetailView(book: book)
                        case .settings:
                            SettingsView()
                        }
                }
        }
        .environmentObject(modelDataManager)
        .environment(\.colorScheme, .dark)
        .environmentObject(navigationStateManager)
//        .task {
//            // reset during launch
//            navigationStateManager.data = navigationStateData
//
//            // save state to userdefaults
//            for await _ in navigationStateManager.objectWillChangeSequence {
//                navigationStateData = navigationStateManager.data
//            }
//        }
        .onReceive(navigationStateManager.objectWillChange.dropFirst()) { _ in
            // save state to userdefaults
            navigationStateData = navigationStateManager.data
        }
        .onAppear {
            // reset during launch
            navigationStateManager.data = navigationStateData
        }
    }
}

struct ThridTabView_Previews: PreviewProvider {
    static var previews: some View {
        ThridTabView()
    }
}
