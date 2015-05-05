//
//  GameOverScene.swift
//  BreakoutSpriteKitTutorial
//
//  Created by Guilherme Bayma on 5/5/15.
//  Copyright (c) 2015 Guilherme Bayma. All rights reserved.
//

import SpriteKit

let GameOverLabelCategoryName = "gameOverLabel"
let TapLabelCategoryName = "tapLabel"

class GameOverScene: SKScene {
    var gameWon : Bool = false {
        // 1.
        didSet {
            let gameOverLabel = childNodeWithName(GameOverLabelCategoryName) as! SKLabelNode
            gameOverLabel.fontName = "Marion"
            gameOverLabel.text = gameWon ? "You Win!" : "Game Over"
            
            let tapLabel = childNodeWithName(TapLabelCategoryName) as! SKLabelNode
            tapLabel.fontName = "Marion"
            tapLabel.text = "Tap to Play!"
        }
    }
    
    override func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent) {
        if let view = view {
            // 2.
            let gameScene = GameScene.unarchiveFromFile("GameScene") as! GameScene
            view.presentScene(gameScene)
        }
    }
}