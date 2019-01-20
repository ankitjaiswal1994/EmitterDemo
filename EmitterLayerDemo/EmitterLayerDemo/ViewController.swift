//
//  ViewController.swift
//  EmitterLayerDemo
//
//  Created by Ankit Jaiswal on 19/01/19.
//  Copyright © 2019 Ankit Jaiswal. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    private let emitterCell = CAEmitterCell()
    private let trailCell = CAEmitterCell()
    private let fireworkCell = CAEmitterCell()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        animateSnow()
    }
    
    func animateSnow() {
        let emitter = CAEmitterLayer()

        setupEmitterCell()
        setupTrailCell()
        setupFireworkCell()

        emitterCell.emitterCells = [trailCell, fireworkCell]
        emitter.emitterCells = [emitterCell]
        emitter.renderMode = CAEmitterLayerRenderMode.additive
        emitter.emitterPosition = CGPoint(x: view.bounds.width/2, y: 0)
        emitter.emitterSize = view.bounds.size
        
        
        view.layer.addSublayer(emitter)
    }
    
    private func setupEmitterCell() {
        emitterCell.color = UIColor.init(red: 0.5, green: 0.5, blue: 0.5, alpha: 0.5).cgColor
        emitterCell.redRange = 0.9
        emitterCell.greenRange = 0.9
        emitterCell.blueRange = 0.9
        emitterCell.lifetime = 2.5
        emitterCell.birthRate = 5
        emitterCell.velocity = 300
        emitterCell.velocityRange = 100
        emitterCell.emissionRange = CGFloat.pi / 4
        emitterCell.emissionLongitude = CGFloat.pi / 2
        emitterCell.yAcceleration = 100
    }
    
    private func setupTrailCell() {
        trailCell.contents = UIImage.init(named: "drop")?.cgImage
        trailCell.lifetime = 0.5
        trailCell.birthRate = 45
        trailCell.velocity = 80
        trailCell.scale = 0.4
        trailCell.alphaSpeed = -0.7
        trailCell.scaleSpeed = -0.1
        trailCell.scaleRange = 0.1
        trailCell.beginTime = 0.01
        trailCell.duration = 1.7
        trailCell.emissionRange = CGFloat.pi / 8
        trailCell.emissionLongitude = CGFloat.pi * 2
        trailCell.yAcceleration = -350;
    }
    
    private func setupFireworkCell() {
        fireworkCell.contents = UIImage.init(named: "drop")?.cgImage
        fireworkCell.lifetime = 100
        fireworkCell.birthRate = 20000
        fireworkCell.velocity = 130
        fireworkCell.scale = 0.6
        fireworkCell.spin = 2
        fireworkCell.alphaSpeed = -0.2
        fireworkCell.scaleSpeed = -0.1
        fireworkCell.beginTime = 1.5
        fireworkCell.duration = 0.1
        fireworkCell.emissionRange = CGFloat.pi * 2
        fireworkCell.yAcceleration = -80
    }

}

