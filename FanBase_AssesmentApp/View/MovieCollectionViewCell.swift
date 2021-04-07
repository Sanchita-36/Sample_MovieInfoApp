//
//  MovieCollectionViewCell.swift
//  FanBase_AssesmentApp
//
//  Created by Mac on 06/04/21.
//  Copyright © 2021 Sanchita. All rights reserved.
//

import UIKit

class MovieCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var collectionImage: UIImageView!
    @IBOutlet weak var collectionTiltleLbl: UILabel!
    
    func actorListUpdate(actorList: ActorsList) {
        collectionTiltleLbl.text = actorList.actorTilte
        collectionImage.image = UIImage(named: actorList.actorImageName)
    }
}
