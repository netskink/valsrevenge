//
//  GameScene+ViewUpdates.swift
//  valsrevenge
//
//  Created by john davis on 12/21/23.
//

import SpriteKit

extension GameScene: GameViewControllerDelegate {
    
    func didChangeLayout() {
        let w = view?.bounds.size.width ?? 1024
        let h = view?.bounds.size.height ?? 1336
        
        if h >= w {
            camera?.setScale(1.0)
        } else {
            camera?.setScale(1.25)
        }
    }
}
