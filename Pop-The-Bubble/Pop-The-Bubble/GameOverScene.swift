//
//  GameOverScene.swift
//  Pop-The-Bubble
//
//  Created by timofey makhlay on 9/26/18.
//  Copyright © 2018 Timofey Makhlay. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameOverScene: SKScene {
    var gameOverLabel = SKLabelNode()
    override func didMove(to view: SKView) {
        print("Game Over Scene")
        gameOverLabel.fontSize = self.frame.width / 6
        gameOverLabel.text = "Game Over"
        gameOverLabel.position = CGPoint(x: self.frame.midX, y: self.frame.midY - 10)
        addChild(gameOverLabel)
    }
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        restartGame()
    }
    
    func restartGame() {
        let gameScene = GameScene(
            size: self.size
        )
        
        self.view?.presentScene(gameScene)
        print("Game Restarting")
    }
}
