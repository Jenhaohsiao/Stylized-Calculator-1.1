//
//  SPRPGMap.swift
//  zombie
//
//  Created by HSIAO JENHAO on 2017-06-19.
//  Copyright © 2017 Yao Lu. All rights reserved.
//

import Foundation
import SpriteKit
import GameplayKit

class SPRPGMap : SKScene {

    var bugsprayTileMap: SKTileMapNode?

    func createBugspray(quantity: Int) {
        // 1
        let tile = SKTileDefinition(texture:
            SKTexture(pixelImageNamed: "bugspray"))
        // 2
        let tilerule = SKTileGroupRule(adjacency:
            SKTileAdjacencyMask.adjacencyAll, tileDefinitions: [tile])
        // 3
        let tilegroup = SKTileGroup(rules: [tilerule])
        // 4
        let tileSet = SKTileSet(tileGroups: [tilegroup])
    }
    

    
}
