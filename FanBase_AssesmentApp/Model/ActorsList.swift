//
//  ActorsList.swift
//  FanBase_AssesmentApp
//
//  Created by Mac on 06/04/21.
//  Copyright © 2021 Sanchita. All rights reserved.
//

import Foundation

struct ActorsList {
    private(set) public var actorImageName: String
    private(set) public var actorTilte: String
    
    init(actorTilte: String, actorImageName: String) {
        self.actorImageName = actorImageName
        self.actorTilte = actorTilte
    }
}
