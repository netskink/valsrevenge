//
//  RenderComponent.swift
//  valsrevenge
//
//  Created by john davis on 12/28/23.
//

import SpriteKit
import GameplayKit

class RenderComponent: GKComponent {
    
    lazy var spriteNode: SKSpriteNode? = {
        entity?.component(ofType: GKSKNodeComponent.self)?.node as? SKSpriteNode
    }()
    
    init(node: SKSpriteNode) {
        super.init()
        spriteNode = node
    }
    
    init(imageNamed: String, scale: CGFloat) {
        super.init()
        
        spriteNode = SKSpriteNode(imageNamed: imageNamed)
        spriteNode?.setScale(scale)
    }
    
    override func didAddToEntity() {
        spriteNode?.entity = entity
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    override class var supportsSecureCoding: Bool {
        true
    }
}
