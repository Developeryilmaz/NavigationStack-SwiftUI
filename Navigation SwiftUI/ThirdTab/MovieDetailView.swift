//
//  MovieDetailView.swift
//  Navigation SwiftUI
//
//  Created by YILMAZ ER on 20.05.2023.
//

import SwiftUI

struct MovieDetailView: View {
    let movie: Movie
    var body: some View {
        VStack{
            Text("Movie detail movie")
        }
        .navigationTitle(movie.title)
       
    }
        
}

struct MovieDetailView_Previews: PreviewProvider {
    static var previews: some View {
        MovieDetailView(movie: Movie(title: "Avatar"))
    }
}
