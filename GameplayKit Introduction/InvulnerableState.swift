//
//  InvulnerableState.swift
//  GameplayKit Introduction
//
//  Created by Davis Allie on 26/07/2015.
//  Copyright © 2015 Davis Allie. All rights reserved.
//

import UIKit
import GameplayKit

class InvulnerableState: GKState {
    
    var node: PlayerNode
    
    init(withNode: PlayerNode) {
        node = withNode
    }
    
    override func isValidNextState(stateClass: AnyClass) -> Bool {
        switch stateClass {
        case is NormalState.Type:
            return true
            
        default:
            return false
        }
    }
    
    override func didEnterWithPreviousState(previousState: GKState?) {
        if let _ = previousState as? NormalState {
            // Adding Component
            let flash = FlashingComponent()
            flash.nodeToFlash = node
            flash.startFlashing()
            node.entity.addComponent(flash)
        }
    }
}
