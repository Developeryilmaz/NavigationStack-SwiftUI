//
//  Book.swift
//  Navigation SwiftUI
//
//  Created by YILMAZ ER on 20.05.2023.
//

import Foundation

struct Book: Identifiable, Hashable, Codable {
    var title: String
    let id: UUID
    
    init(title: String) {
        self.title = title
        self.id = UUID()
    }
    
    static func examples() ->[Book] {
        [
            Book(title: "Lord of Rings"),
            Book(title: "Game of Thrones"),
            Book(title: "The Shining"),
        ]
    }
}


