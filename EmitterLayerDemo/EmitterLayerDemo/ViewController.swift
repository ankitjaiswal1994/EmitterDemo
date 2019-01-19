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
        let cell = CAEmitterCell()
        cell.birthRate = 2
        cell.lifetime = 50
        cell.contents = UIImage(named: "drop")?.cgImage
        cell.velocity = 40
        cell.emissionLongitude = 180 * (.pi/180)
        cell.emissionRange = 45 * (.pi/180)
        cell.scale = 0.5
        cell.scaleRange = 0.2
        
        emitter.emitterCells = [cell]
        emitter.emitterShape = CAEmitterLayerEmitterShape.line
        emitter.emitterPosition = CGPoint(x: view.frame.width/2, y: 0)
        emitter.emitterSize = CGSize.init(width: view.frame.width, height: 2)
        
        
        view.layer.addSublayer(emitter)
    }
}

