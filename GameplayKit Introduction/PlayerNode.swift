//
//  PlayerNode.swift
//  GameplayKit Introduction
//
//  Created by Davis Allie on 19/07/2015.
//  Copyright © 2015 Davis Allie. All rights reserved.
//

import UIKit
import SpriteKit
import GameplayKit

class PlayerNode: SKShapeNode {
    
    var enabled = true {
        didSet {
            if self.enabled == false {
                self.alpha = 0.1
                
                self.runAction(SKAction.customActionWithDuration(2.0, actionBlock: { (node, elapsedTime) -> Void in
                    if elapsedTime == 2.0 {
                        self.enabled = true
                    }
                }))
                
                self.runAction(SKAction.fadeInWithDuration(2.0))
            }
        }
    }
    
    var entity = Player()
    
    var stateMachine: GKStateMachine!

    func enterNormalState() {
        self.stateMachine.enterState(NormalState)
    }
}
