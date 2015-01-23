//
//  GameScene.swift
//  TBD1
//
//  Created by Olyver on 1/12/15.
//  Copyright (c) 2015 Olyver. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    
    var sprite1 = SKSpriteNode(imageNamed:"Spaceship")
    var loc1 = CGPoint(x:0, y:0)
    
    
    override func didMoveToView(view: SKView) {
        
    
        sprite1.xScale = 0.5
        sprite1.yScale = 0.5
        /* Setup your scene here */
        let myLabel = SKLabelNode(fontNamed:"Chalkduster")
        myLabel.text = "Hello, World!";
        myLabel.fontSize = 65;
        myLabel.position = CGPoint(x:CGRectGetMidX(self.frame), y:CGRectGetMidY(self.frame));
        sprite1.position = CGPoint(x:CGRectGetMidX(self.frame), y:CGRectGetMidY(self.frame));
        self.addChild(sprite1)
        self.addChild(myLabel)
    }
    
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        /* Called when a touch begins */
        
        for touch: AnyObject in touches {
            loc1 = touch.locationInNode(self)
            
            //sprite1.position = location
            
            
            
        }
    }
   
    override func update(currentTime: CFTimeInterval) {
        
        var x: CGFloat = loc1.x
        var y: CGFloat = loc1.y
        var speed: CGFloat = 1
        var x1:CGFloat = sprite1.position.x
        var y1:CGFloat = sprite1.position.y
        
        let angle = atan2((y1-y),(x1-x))
        let x2 = x1-cos(angle)*speed
        let y2 = y1-sin(angle)*speed
        sprite1.position = CGPoint(x:x2, y:y2)
        
    }
}
