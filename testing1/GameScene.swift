//
//  GameScene.swift
//  testing1
//
//  Created by Anil on 10/06/15.
//  Copyright (c) 2015 Variya Soft Solutions. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    
    let runner = SKSpriteNode(imageNamed: "Spaceship")
    
    override func didMoveToView(view: SKView)
    {
        self.createRunner()
    }
    
    
    override func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent) {
        var touch = touches.first as! UITouch
        var touchLocation = touch.locationInNode(self)
        runner.position = touchLocation
    }
   
    override func touchesMoved(touches: Set<NSObject>, withEvent event: UIEvent) {
        var touch = touches.first as! UITouch
        var touchLocation = touch.locationInNode(self)
        runner.position = touchLocation
    }
    
    func createRunner()
    {
        runner.setScale(0.50)
        runner.position = CGPointMake(0, 0)
        runner.name = "RunnerNode"
        self.addChild(runner)
    }
}
