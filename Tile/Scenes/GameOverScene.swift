//
//  GameScene.swift
//  Tile
//
//  Created by 小白 on 2017/12/28.
//  Copyright © 2017年 LinJian. All rights reserved.
//

import SpriteKit

class GameOverScene: SKScene {
    
    // MARK: - Private class constants
    private let label = SKLabelNode()
    
    // MARK: - Init
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override init(size: CGSize) {
        super.init(size: size)
    }
    
    override func didMove(to view: SKView) {
        setup()
    }
    
    // MARK: - Setup
    private func setup() {
        self.backgroundColor = SKColor.black
        
        label.fontName = "Arial"
        label.fontColor = SKColor.white
        label.fontSize = 44.0
        label.text = "GameOverScene"
        label.position = kScreenCenter
        
        self.addChild(label)
    }
    
    // MARK: - Update
    override func update(_ currentTime: TimeInterval) {
    }
    
    // MARK: - Touch Events
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let touch:UITouch = touches.first! as UITouch
        let touchLocation = touch.location(in: self)
        
        if label.contains(touchLocation) {
            loadScene()
        }
    }
    
    // MARK: - Load Scene
    private func loadScene() {
        let scene = MenuScene(size: kViewSize)
        let transition = SKTransition.fade(with: SKColor.black, duration: 0.5)
        
        self.view?.presentScene(scene, transition: transition)
    }
}

