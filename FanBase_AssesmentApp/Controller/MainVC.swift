//
//  MainVC.swift
//  FanBase_AssesmentApp
//
//  Created by Mac on 06/04/21.
//  Copyright © 2021 Sanchita. All rights reserved.
//

import UIKit

class MainVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var movieTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        movieTableView.delegate = self
        movieTableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return MovieService.instance.getMovieList().count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "moviesCell") as? MovieCell {
            let movie = MovieService.instance.getMovieList()[indexPath.row]
            cell.movieDataUpdate(movieList: movie)
            return cell
        }else {
            return MovieCell()
        }
    }
}
