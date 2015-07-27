//
//  FlashingComponent.swift
//  GameplayKit Introduction
//
//  Created by Davis Allie on 26/07/2015.
//  Copyright © 2015 Davis Allie. All rights reserved.
//

import UIKit
import SpriteKit
import GameplayKit

class FlashingComponent: GKComponent {
    
    var nodeToFlash: SKNode!
    
    func startFlashing() {

        let fadeAction = SKAction.sequence([SKAction.fadeOutWithDuration(0.75), SKAction.fadeInWithDuration(0.75)])
        nodeToFlash.runAction(SKAction.repeatActionForever(fadeAction), withKey: "flash")
        
    }
    
    deinit {
        nodeToFlash.removeActionForKey("flash")
    }
}
