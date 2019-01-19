//
//  ViewController.swift
//  EmitterLayerDemo
//
//  Created by Ankit Jaiswal on 19/01/19.
//  Copyright © 2019 Ankit Jaiswal. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        animateSnow()
    }
    
    func animateSnow() {
        let emitter = CAEmitterLayer()
        let snowflakeEmitterCell = CAEmitterCell()
        
        snowflakeEmitterCell.color = UIColor.white.cgColor
        snowflakeEmitterCell.contents = UIImage.init(named: "drop")?.cgImage
        snowflakeEmitterCell.lifetime = 5.5
        snowflakeEmitterCell.birthRate = 200
        snowflakeEmitterCell.blueRange = 0.15
        snowflakeEmitterCell.alphaRange = 0.4
        snowflakeEmitterCell.velocity = 10
        snowflakeEmitterCell.velocityRange = 300
        snowflakeEmitterCell.scale = 0.4
        snowflakeEmitterCell.scaleRange = 1.3
        snowflakeEmitterCell.emissionRange = CGFloat.pi / 2
        snowflakeEmitterCell.emissionLongitude = CGFloat.pi
        snowflakeEmitterCell.yAcceleration = -70
        snowflakeEmitterCell.scaleSpeed = -0.1
        snowflakeEmitterCell.alphaSpeed = -0.05

        emitter.emitterCells = [snowflakeEmitterCell]
        emitter.emitterShape = CAEmitterLayerEmitterShape.rectangle
        emitter.emitterPosition = CGPoint(x: view.bounds.width/2, y: view.bounds.height)
        emitter.emitterSize = view.bounds.size
        
        
        view.layer.addSublayer(emitter)
    }
}

