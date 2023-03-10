//
//  ViewController.swift
//  DYBlinkObject
//
//  Created by doyeonjeong on 03/10/2023.
//  Copyright (c) 2023 doyeonjeong. All rights reserved.
//

import UIKit
import DYBlinkObject

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(red: 0.17, green: 0.24, blue: 0.31, alpha: 1.00)
        setupObjects()
    }
    
    func setupObjects() {
        let blinkObject = DYBlinkObject()
        
        // Sample Object 1
        let firstObject = blinkObject.drawObject(width: 200, height: 200)
        blinkObject.addBlinkingAnimation(to: firstObject, withDuration: 2.0, delay: 0.0, minAlpha: 0.5)

        // Sample Object 2
        let secondObject = blinkObject.drawObject(width: 300, height: 40, radius: 10)
        blinkObject.addBlinkingAnimation(to: secondObject, withDuration: 1.0, delay: 0.0, minAlpha: 0.2)
        
        let firstLabel1 = makeTextLabel(text: "width: 200, height: 200", size: 20)
        let firstLabel2 = makeTextLabel(text: "withDuration: 2.0, minAlpha: 0.5", size: 20)
        let secondLabel1 = makeTextLabel(text: "width: 300, height: 40, radius: 10", size: 20)
        let secondLabel2 = makeTextLabel(text: "withDuration: 1.0, minAlpha: 0.2", size: 20)
        
        let views = [firstObject, firstLabel1, firstLabel2, secondObject, secondLabel1, secondLabel2]
        views.forEach { view.addSubview($0) }
        
        NSLayoutConstraint.activate([
            firstObject.topAnchor.constraint(equalTo: view.topAnchor, constant: 140),
            firstObject.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            firstLabel1.topAnchor.constraint(equalTo: firstObject.bottomAnchor, constant: 20),
            firstLabel1.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            firstLabel2.topAnchor.constraint(equalTo: firstLabel1.bottomAnchor, constant: 20),
            firstLabel2.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            secondObject.topAnchor.constraint(equalTo: firstLabel2.bottomAnchor, constant: 100),
            secondObject.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            secondLabel1.topAnchor.constraint(equalTo: secondObject.bottomAnchor, constant: 20),
            secondLabel1.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            secondLabel2.topAnchor.constraint(equalTo: secondLabel1.bottomAnchor, constant: 20),
            secondLabel2.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
    }
    
    func makeTextLabel(text: String, size: CGFloat) -> UILabel {
        let label = UILabel()
        label.text = text
        label.font = UIFont.systemFont(ofSize: size)
        label.sizeToFit()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        return label
    }
}
