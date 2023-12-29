//
//  GKComponent+Node.swift
//  valsrevenge
//
//  Created by john davis on 12/28/23.
//

import SpriteKit
import GameplayKit

extension GKComponent {
    var componentNode: SKNode {
        if let node = entity?.component(ofType: GKSKNodeComponent.self)?.node {
            return node
        } else if let node = entity?.component(ofType: RenderComponent.self)?.spriteNode {
            return node
        }
        
        return SKNode()
    }
}
