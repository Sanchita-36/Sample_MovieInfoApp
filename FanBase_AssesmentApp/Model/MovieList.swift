//
//  MovieList.swift
//  FanBase_AssesmentApp
//
//  Created by Mac on 06/04/21.
//  Copyright © 2021 Sanchita. All rights reserved.
//

import Foundation

struct MovieList {
    private(set) public var movieTitle: String
    private(set) public var movieDirector: String
    private(set) public var movieDuration: String
    private(set) public var movieRating: String
    private(set) public var movieImageName: String
    
    init(movieTitle: String, movieDirector: String, movieDuration: String, movieRating: String, movieImageName: String ) {
        self.movieTitle = movieTitle
        self.movieDirector = movieDirector
        self.movieDuration = movieDuration
        self.movieRating = movieRating
        self.movieImageName = movieImageName
    }
}
