//
//  ModelDataManager.swift
//  Navigation SwiftUI
//
//  Created by YILMAZ ER on 20.05.2023.
//

import Foundation

class ModelDataManager: ObservableObject {
    
    @Published var books = Book.examples()
    @Published var songs = Song.examples()
    @Published var movies = Movie.examples()
}
