//
//  GameViewController.swift
//  Pop-The-Bubble
//
//  Created by timofey makhlay on 9/25/18.
//  Copyright © 2018 Timofey Makhlay. All rights reserved.
//

import UIKit
import SpriteKit
import GameplayKit

class GameViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Set up view
        guard let view = self.view as? SKView else {return}
        
        // Create our GameScene
        let gameScene = GameScene(size: self.view.frame.size)
        gameScene.scaleMode = .aspectFit
        
        // Present our game scene
        view.presentScene(gameScene)
        
            view.showsFPS = true
            view.showsNodeCount = true
    }

    override var shouldAutorotate: Bool {
        return true
    }

    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        if UIDevice.current.userInterfaceIdiom == .phone {
            return .allButUpsideDown
        } else {
            return .all
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Release any cached data, images, etc that aren't in use.
    }

    override var prefersStatusBarHidden: Bool {
        return true
    }
}
