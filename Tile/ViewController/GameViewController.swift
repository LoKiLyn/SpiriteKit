//
//  GameViewController.swift
//  Tile
//
//  Created by 小白 on 2017/12/28.
//  Copyright © 2017年 LinJian. All rights reserved.
//

import UIKit
import SpriteKit
import GameplayKit

class GameViewController: UIViewController {

    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        
        if let view = self.view as! SKView? {
            if view.scene == nil {
                if kDebug {
                    view.showsFPS = true
                    view.showsDrawCount = true
                    view.showsNodeCount = true
                    view.showsPhysics = true
                }
                
                let scene = MenuScene(size: kViewSize)
                let transition = SKTransition.fade(with: SKColor.black, duration: 0.5)
                
                view.presentScene(scene, transition: transition)
            }
        }
    }
    
    override var shouldAutorotate: Bool {
        return true
    }
    
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        return .portrait
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
}
