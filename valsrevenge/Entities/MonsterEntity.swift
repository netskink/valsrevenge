//
//  MonsterEntity.swift
//  valsrevenge
//
//  Created by john davis on 12/28/23.
//

import SpriteKit
import GameplayKit

class MonsterEntity: GKEntity {
    init(monsterType: String) {
        super.init()
    }
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
}
