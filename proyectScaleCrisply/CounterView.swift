//
//  CounterView.swift
//  proyectScaleCrisply
//
//  Created by Raul Huamani on 30/03/17.
//  Copyright © 2017 Smith Huamani. All rights reserved.
//

import UIKit

let noOfGlasses = 8
let π: CGFloat = CGFloat(M_PI)

@IBDesignable class CounterView: UIView {

    @IBInspectable var counter: Int = 5
    @IBInspectable var outlineColor: UIColor = UIColor.blue
    @IBInspectable var counterColor: UIColor = UIColor.orange
    
    override func draw(_ rect: CGRect) {
        
        let center = CGPoint(x: bounds.width/2, y: bounds.height/2)
        
        let radius: CGFloat = max(bounds.width, bounds.height)
        
        let arcWidth: CGFloat = 76
        
        let startAngle: CGFloat = 3 * π / 4
        let endAngle: CGFloat = π / 4
        
        let path = UIBezierPath(
            arcCenter: center,
            radius: radius/2 - arcWidth/2,
            startAngle: startAngle,
            endAngle: endAngle,
            clockwise: true)
        
        path.lineWidth = arcWidth
        counterColor.setStroke()
        path.stroke()
    }
    
}
