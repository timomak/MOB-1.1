//
//  GameScene.swift
//  Pop-The-Bubble
//
//  Created by timofey makhlay on 9/25/18.
//  Copyright © 2018 Timofey Makhlay. All rights reserved.
//

// TODO: Extension for random
// TODO: Fix hue color

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    var timer = Timer()
    var points = 0
    var pointsLabel = SKLabelNode()
    
    
    override func didMove(to view: SKView) {
        generateBubbleIn()
        setupPointsLabel()
    }
    
    // Set settings for label
    // Add it to scene
    func setupPointsLabel() {
        guard let scene = scene else {return}
        
        pointsLabel.fontSize = 30
        pointsLabel.text = "Points: \(points)"
        
        // Give a position
        let xPos = scene.frame.minX + (pointsLabel.frame.size.width / 2)
        let yPos = scene.frame.minY + (pointsLabel.frame.size.height + 25)
        
        let pointPosition = CGPoint(x: xPos, y: yPos)
        
        let pointLocationInScene = scene.convertPoint(fromView: pointPosition)
        
        pointsLabel.position = pointLocationInScene
        
        // add
        addChild(pointsLabel)
        
        pointsLabel.zPosition += 1
    }
    
    // Generate bubbles on a timer
    func generateBubbleIn() {
        
        let timeInterval = TimeInterval(randomFloat(MIN: 2, MAX: 5))
        
        timer = Timer.scheduledTimer(withTimeInterval: timeInterval, repeats: true, block: { _ in
            
            let bubble = self.generateBubble()
            
            // Add bubble to scene
            self.addChild(bubble)
            self.moveBubbleToTop(bubble: bubble)
        })
    }
    
    // Generate bubble at random position
    func generateBubble() -> SKShapeNode {
        guard let scene = scene else {fatalError()}
        print("Generating new bubble")
        // Create bubble with Random size between 30 to 100
        let bubble = SKShapeNode(circleOfRadius: random(MIN: 30, MAX: 100))
        bubble.name = "Bubble"
        print("Bubble name: \(bubble.name)")
        
        // Generate Random color
        let bubbleColor = UIColor(
            hue: random(MIN:0, MAX:360),
            saturation: random(MIN: 30, MAX: 100),
            brightness: random(MIN: 60, MAX: 100),
            alpha: 1
        )
        
        bubble.fillColor = bubbleColor
        print("Bubble color: ", bubble.fillColor)
        
        // The X position of the bubble
        // Start at a random x position
        let bubbleHalfWidth = (bubble.frame.size.width / 2)
        let leadingXPos = scene.frame.minX + bubbleHalfWidth
        let trailingXPos = scene.frame.maxX - bubbleHalfWidth
        let xPos = random(MIN: Int(leadingXPos), MAX: Int(trailingXPos))
        
        // The Y Position of the Bubble
        let bubbleHalfHeight = (bubble.frame.size.height / 2)
        let leadingYPos = scene.frame.minY + bubbleHalfHeight
        let trailingYPos = scene.frame.maxY - bubbleHalfHeight
        let yPos = random(MIN: Int(leadingYPos), MAX: Int(trailingYPos))
        
        let bubblePoint = CGPoint(x: xPos, y: scene.frame.maxY + bubbleHalfHeight)
        print("Bubble point: ", bubblePoint)
        let bubblePositionInScene = scene.convertPoint(toView: bubblePoint)
        print("Bubble pos in scene: ", bubblePositionInScene)
        
        bubble.position = bubblePositionInScene
        print("Bubble position: ", bubble.position)
        return bubble
    }
    
    func moveBubbleToTop(bubble: SKShapeNode) {
        guard let topPos = scene?.view?.frame.minY else {return}
        
        let destinationY = topPos - bubble.frame.size.height
        let destinationPoint = CGPoint(x: bubble.frame.origin.x, y: destinationY)
        
        let locationInScene = scene!.convertPoint(toView: destinationPoint)
        
        let translateAction = SKAction.move (
            to: locationInScene,
            duration: TimeInterval(randomFloat(MIN: 2.5, MAX: 4))
        )
        
        // remove bubble when it reaches the top
        bubble.run(translateAction) {
            bubble.removeFromParent()
            
            // take points off if it reaches top
            self.points -= 1
            self.updatePoints(points: self.points)
            
            if self.isGameOver() {
                self.handleGameOver(won: false)
            }
        }
    }
    func updatePoints(points: Int) {
        pointsLabel.text = "Points: \(points)"
    }
    
    // Declare Game Over
    func handleGameOver(won: Bool) {
//        let gameOverScene = GameOverScene(
//            size: self.size,
//            won: won
//        )
//
//        self.view?.presentScene(gameOverScene)
        print("Game Over")
    }
    
    // Bubble touch
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        guard let touch = touches.first else {return}
        
        handleTouch(touch: touch)
    }
    
    func handleTouch(touch: UITouch) {
        // User touched a bubble
        guard let bubble = touchedABubble(touch: touch) else {return}
        
        // Increment points
        points += 1
        pointsLabel.text = "Points: \(points)"
        bubble.removeFromParent()
    }
    
    func touchedABubble(touch: UITouch) -> SKNode? {
        let positionInScene = touch.location(in: self)
        let touchedNode = self.atPoint(positionInScene)
        
        print(touchedNode)
        guard touchedNode.name == "Bubble" else {return nil}
        
        return touchedNode
    }
    
    // Check if game over
    func isGameOver() -> Bool {
        return points < 0
    }
    
}

func random(MIN: Int, MAX: Int)-> CGFloat{
    return CGFloat(arc4random_uniform(UInt32(MAX-MIN)) + UInt32(MIN));
}
func randomInt(MIN: Int, MAX: Int)-> Int{
    return Int(arc4random_uniform(UInt32(MAX-MIN)) + UInt32(MIN));
}

func randomFloat(MIN: Float, MAX: Float)-> Float{
    return Float(arc4random_uniform(UInt32(MAX-MIN)) + UInt32(MIN));
}
