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
        let flameEmitterCell = CAEmitterCell()

        flameEmitterCell.color = UIColor.init(red: 1.0, green: 0.5, blue: 0.2, alpha: 1.0).cgColor
        flameEmitterCell.contents = UIImage.init(named: "drop")?.cgImage
        flameEmitterCell.lifetime = 5.0
        flameEmitterCell.birthRate = 150
        flameEmitterCell.alphaSpeed = -0.4
        flameEmitterCell.velocity = 50
        flameEmitterCell.velocityRange = 50
        flameEmitterCell.emissionRange = CGFloat.pi * 2


        emitter.emitterCells = [flameEmitterCell]
        emitter.renderMode = CAEmitterLayerRenderMode.additive
        emitter.emitterPosition = CGPoint(x: view.bounds.width/2, y: view.bounds.height/2)
        emitter.emitterSize = view.bounds.size
        
        
        view.layer.addSublayer(emitter)
    }
}

