//
//  NormalState.swift
//  GameplayKit Introduction
//
//  Created by Davis Allie on 26/07/2015.
//  Copyright © 2015 Davis Allie. All rights reserved.
//

import UIKit
import SpriteKit
import GameplayKit

class NormalState: GKState {
    
    var node: PlayerNode
    
    init(withNode: PlayerNode) {
        node = withNode
    }
    
    override func isValidNextState(stateClass: AnyClass) -> Bool {
        switch stateClass {
        case is InvulnerableState.Type:
            return true
            
        default:
            return false
        }
    }
    
    override func didEnterWithPreviousState(previousState: GKState?) {
        if let _ = previousState as? InvulnerableState {
            node.entity.removeComponentForClass(FlashingComponent)
            node.runAction(SKAction.fadeInWithDuration(0.5))
        }
    }
}
