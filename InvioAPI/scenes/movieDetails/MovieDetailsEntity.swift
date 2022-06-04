//
//  MovieDetailsEntity.swift
//  InvioAPI
//
//  Created irem TOSUN on 2.06.2022.
//  Copyright © 2022 ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit

/// MovieDetails Module Entity
struct MovieDetailsEntity {

    struct ViewModel{
        let title: String
        let genre: String
        let writer: String
        let ratings: [Rating]
        let country: String
        let language: String
        let director: String
        let actors: String
        let plot: String
        let poster: String
        
        init(movie: Movie){
            self.title = movie.title
            self.genre = movie.genre
            self.writer = movie.writer
            self.ratings = movie.ratings
            self.country = movie.country
            self.language = movie.language
            self.director = movie.director
            self.actors = movie.actors
            self.plot = movie.plot
            self.poster = movie.poster
        }
    }
}
