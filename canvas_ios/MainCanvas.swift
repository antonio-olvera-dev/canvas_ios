//
//  MainCanvas.swift
//  canvas_ios
//
//  Created by Antonio Olvera on 12/9/21.
//

import Foundation
import UIKit

class MainCanvas:UIView{
    
    override func draw(_ rect: CGRect) {
        super.draw(rect)
        
        guard let context = UIGraphicsGetCurrentContext() else { return }
        
        let startPoint = CGPoint(x: 0, y: 0)
        let endtPoint = CGPoint(x: 100, y: 100)
        
        context.move(to: startPoint)
        context.addLine(to: endtPoint)
        
        context.strokePath()
        
    }
    
    
    
    
}
