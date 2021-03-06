//
//  MonsterImg.swift
//  MyLittleMonster
//
//  Created by Shane Lupton on 11/17/15.
//  Copyright © 2015 Shane Lupton. All rights reserved.
//

import Foundation
import UIKit

class MonsterImg: UIImageView {
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        playIdleAnimation()
    }
//Animation
    func playIdleAnimation() {
        
        self.image = UIImage(named: "idle1.png")
        
        self.animationImages = nil
        
        var imgArrayBlue = [UIImage]()
        for var x = 1; x <= 4; x++ {
            let img = UIImage(named: "idle\(x).png")
            imgArrayBlue.append(img!)
    }
    
        self.animationImages = imgArrayBlue
        self.animationDuration = 0.8
        self.animationRepeatCount = 0
        self.startAnimating()
    
    }

    func playDeathAnimation() {
        
        self.image = UIImage(named: "dead5.png")
        
        self.animationImages = nil
        
        var imgArrayDeadBlue = [UIImage]()
        for var y = 1; y <= 5; y++ {
            let img = UIImage(named: "dead\(y).png")
            imgArrayDeadBlue.append(img!)
        }
        
        self.animationImages = imgArrayDeadBlue
        self.animationDuration = 0.8
        self.animationRepeatCount = 1
        self.startAnimating()
        
    }
//animation

}




