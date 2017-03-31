//
//  PushButtonView.swift
//  proyectScaleCrisply
//
//  Created by Smith Huamani on 30/03/17.
//  Copyright © 2017 Smith Huamani. All rights reserved.
//

import UIKit

@IBDesignable
class PushButtonView: UIButton {
    
    @IBInspectable var fillColor: UIColor = UIColor.green
    @IBInspectable var isAddButton: Bool = true

    override func draw(_ rect: CGRect) {
        
        //Se crea el dibujo circulo
        let path = UIBezierPath(ovalIn: rect)
        fillColor.setFill()
        path.fill()
        
        //Configurar el width y height para las variables de una LINEA HORIZONTAL
        let plusHeight: CGFloat = 3.0
        let plusWidth: CGFloat = min(bounds.width, bounds.height) * 0.6
        
        //Se crea el Path(camino)
        let plusPath = UIBezierPath()
        //Se establece el ancho de la linea a la altura de la trazo
        plusPath.lineWidth = plusHeight
        
        //mueve el punto inicial de la ruta
        // al inicio del trazo horizontal
        plusPath.move(to: CGPoint(x: bounds.width / 2 - plusWidth / 2, y: bounds.height / 2))
        
        //Agrega un punto de ruta al final del trazo
        plusPath.addLine(to: CGPoint(x: bounds.width / 2 + plusWidth / 2 , y: bounds.height / 2))
        
        if isAddButton {
            
            plusPath.move(to: CGPoint(x: bounds.width / 2 + 0.5, y: bounds.height / 2 - plusWidth / 2 + 0.5))
            
            plusPath.addLine(to: CGPoint(x: bounds.width / 2 + 0.5, y: bounds.height / 2 + plusWidth / 2 + 0.5))
        }
        
        //Definir el color del trazo
        UIColor.white.setStroke()
        //Dibujo el trazo
        plusPath.stroke()
        
        
    }
    
}
