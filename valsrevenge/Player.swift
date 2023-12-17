//
//  Player.swift
//  valsrevenge
//
//  Created by john davis on 12/17/23.
//

import SpriteKit

enum Direction: String {
    case stop
    case left
    case right
    case up
    case down
}

class Player: SKSpriteNode {
    
    func move(_ direction: Direction) {
        print("move player: \(direction.rawValue)")
    
        switch direction {
        case .stop:
            stop()
        case .left:
            print("left")
            self.physicsBody?.velocity = CGVector(dx: -100, dy: 0)
        case .right:
            print("right")
            self.physicsBody?.velocity = CGVector(dx: 100, dy: 0)
        case .up:
            print("up")
            self.physicsBody?.velocity = CGVector(dx: 0, dy: 100)
        case .down:
            print("down")
            self.physicsBody?.velocity = CGVector(dx: 0, dy: -100)
        }
    }
    
    func stop() {
        print("stop player")
        self.physicsBody?.velocity = CGVector(dx: 0, dy: 0)
    }
}
