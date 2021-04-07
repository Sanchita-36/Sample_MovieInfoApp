//
//  MovieCell.swift
//  FanBase_AssesmentApp
//
//  Created by Mac on 06/04/21.
//  Copyright © 2021 Sanchita. All rights reserved.
//

import UIKit

class MovieCell: UITableViewCell, UICollectionViewDelegate, UICollectionViewDataSource {
   
    @IBOutlet weak var movieImageLbl: UIImageView!
    @IBOutlet weak var movieTitleLbl: UILabel!
    @IBOutlet weak var movieDirectorLbl: UILabel!
    @IBOutlet weak var movieDurationLbl: UILabel!
    @IBOutlet weak var movieRatingLbl: UILabel!
    @IBOutlet weak var actorsCollectionView: UICollectionView!
        
    private(set) public var actors = [ActorsList]()
    var actorCount: String = ""
    func movieDataUpdate(movieList: MovieList) {
        movieTitleLbl.text = movieList.movieTitle
        movieDirectorLbl.text = movieList.movieDirector
        movieDurationLbl.text = movieList.movieDuration
        movieRatingLbl.text = movieList.movieRating
        movieImageLbl.image = UIImage(named: movieList.movieImageName)
        
        self.actorCount = movieList.movieTitle
    }
    
   override func awakeFromNib() {
          super.awakeFromNib()
          actorsCollectionView.delegate = self
          actorsCollectionView.dataSource = self
      }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return MovieService.instance.getActorsList(forMovieTitle: self.actorCount).count
       }
       
       func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
           if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "actorsCell", for: indexPath) as? MovieCollectionViewCell {
               let actor = MovieService.instance.getActorsList(forMovieTitle: self.actorCount)[indexPath.row]
               cell.actorListUpdate(actorList: actor)
               return cell
           }else {
               return MovieCollectionViewCell()
           }
       }
}
