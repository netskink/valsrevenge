//
//  GameObjects.swift
//  valsrevenge
//
//  Created by john davis on 1/6/24.
//

import SpriteKit
import GameplayKit

enum GameObjectType: String {
    
    // Monsters
    case skeleton
    case goblin
}

struct GameObject {
    
    static let defaultGeneratorType = GameObjectType.skeleton.rawValue
    static let defaultAnimationType = GameObjectType.skeleton.rawValue
    
    static let skeleton = Skeleton()
    static let goblin = Goblin()
    
    struct Goblin {
        let animationSettings = Animation(textures:
                                            SKTexture.loadTextures(atlas: "monster_goblin",
                                                                   prefix: "goblin_",
                                                                   startsAt: 0, stopsAt: 1))
    }

    struct Skeleton {
        let animationSettings = Animation(textures:
                                            SKTexture.loadTextures(atlas: "monster_skeleton", 
                                                                   prefix: "skeleton_",
                                                                   startsAt: 0, stopsAt: 1),
                                          timePerFrame: TimeInterval(1.0 / 25.0))
    }
    
    static func forAnimationType(_ type: GameObjectType?) -> Animation? {
        switch type {
        case .skeleton:
            return GameObject.skeleton.animationSettings
        case .goblin:
            return GameObject.goblin.animationSettings
        default:
            return nil
        }
    }
    
}
