//
//  AnimationComponent.swift
//  valsrevenge
//
//  Created by john davis on 1/6/24.
//

import SpriteKit
import GameplayKit


struct Animation {
    
    
    let textures: [SKTexture]
    var timePerFrame: TimeInterval
    
    let repeatTexturesForever: Bool
    let resizeTexture: Bool
    let restoreTexture: Bool
    
    init(textures: [SKTexture],
         timePerFrame: TimeInterval = TimeInterval(1.0 / 5.0),
         repeatTexturesForever: Bool = true, resizeTexture: Bool = true,
         restoreTexture: Bool = true) {
        
        self.textures = textures
        self.timePerFrame = timePerFrame
        self.repeatTexturesForever = repeatTexturesForever
        self.resizeTexture = resizeTexture
        self.restoreTexture = restoreTexture
    }
}


// MARK: - COMPONENT CODE STARTS HERE

class AnimationComponent: GKComponent {

    @GKInspectable var animationType: String = GameObject.defaultAnimationType


    override func didAddToEntity() {
        
        guard let animation = GameObject.forAnimationType(GameObjectType(rawValue: animationType)) else {
            return
        }
        
        let textures = animation.textures
        let timePerFrame = animation.timePerFrame
        let animationAction = SKAction.animate(with: textures, timePerFrame: timePerFrame)
        
        if animation.repeatTexturesForever == true {
            let repeatAction = SKAction.repeatForever(animationAction)
            componentNode.run(repeatAction)
        } else {
            componentNode.run(animationAction)
        }
    }
    
    override class var supportsSecureCoding: Bool {
        true
    }
}
