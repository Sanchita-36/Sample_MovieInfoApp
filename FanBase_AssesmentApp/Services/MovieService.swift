//
//  MovieService.swift
//  FanBase_AssesmentApp
//
//  Created by Mac on 06/04/21.
//  Copyright © 2021 Sanchita. All rights reserved.
//

import Foundation

class MovieService {
    
    static let instance = MovieService()
    
    private let movieListArray = [
        MovieList(movieTitle: "Suicide Squad", movieDirector: "James Gunn", movieDuration: "2h 17m", movieRating: "7/10", movieImageName: "Suicide_Squad.png"),
        MovieList(movieTitle: "3 Idiots", movieDirector: "Rajkumar Hirani", movieDuration: "2h 51m", movieRating: "8.4/10", movieImageName: "3Idiots.jpeg")
    ]
    
    private let actorsListArraySuicideSquad = [
        ActorsList(actorTilte: "Margot Robbie", actorImageName: "MargotRobbie_SS.jpeg"),
        ActorsList(actorTilte: "Will Smith", actorImageName: "WillSmith_SS.jpeg"),
        ActorsList(actorTilte: "Daniela Melchior", actorImageName: "DanielaMelchior_SS.jpeg"),
        ActorsList(actorTilte: "Jared Leto", actorImageName: "JaredLeto_SS.jpeg"),
        ActorsList(actorTilte: "John Cena", actorImageName: "JohnCena_SS.jpeg")
    ]
    
    private let actorsListArray3Idiots = [
        ActorsList(actorTilte: "Amir Khan", actorImageName: "AmirKhan_Idiots.jpeg"),
        ActorsList(actorTilte: "Kareena Kapoor", actorImageName: "Kareena_Idiots.jpeg"),
        ActorsList(actorTilte: "RMadhavan", actorImageName: "RMadhavan_Idiots.jpeg"),
        ActorsList(actorTilte: "Sharman Joshi", actorImageName: "SharmanJoshi_Idiots.jpeg"),
        ActorsList(actorTilte: "Boman Irani", actorImageName: "BomanIrani_Idiots.jpeg")
    ]
    
    
    func getMovieList() -> [MovieList]{
        return movieListArray
    }
    
    func getActorsSuicideSqaud() -> [ActorsList]{
        return actorsListArraySuicideSquad
    }
    
    func getActors3Idiots() -> [ActorsList] {
        return actorsListArray3Idiots
    }
    
    func getActorsList(forMovieTitle title: String) -> [ActorsList] {
        switch title {
        case "Suicide Squad":
            return getActorsSuicideSqaud()
            break
        case "3 Idiots":
            return getActors3Idiots()
            break
        default:
            return getActorsSuicideSqaud()
        }
    }
}
