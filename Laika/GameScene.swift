//
//  GameScene.swift
//  Laika
//
//  Created by Ash Duckett on 17/07/2017.
//  Copyright © 2017 Ash Duckett. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    var playableRect: CGRect
    
    
    func debugDrawPlayableArea() {
        let shape = SKShapeNode()
        let path = CGMutablePath()
        path.addRect(playableRect)
        shape.path = path
        shape.strokeColor = SKColor.green
        shape.lineWidth = 4.0
        addChild(shape)
    }
    
    
    override init(size: CGSize) {
        let maxAspectRatio: CGFloat = 16.0 / 9.0
        let playableWidth = size.height / maxAspectRatio
        let playableMargin = (size.width - playableWidth) / 2.0
        playableRect = CGRect(x: playableMargin, y: 0, width: playableWidth, height: size.height)
        
        
        print("Width is \(playableRect.width)")
        
        
        super.init(size: size)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented.")
    }
    
    override func didMove(to view: SKView) {
        backgroundColor = SKColor.black
        // debugDrawPlayableArea()
    }
    
    
    
    
    override func update(_ currentTime: TimeInterval) {
        // Called before each frame is rendered
    }
}
