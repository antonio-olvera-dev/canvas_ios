//
//  MainCanvas.swift
//  canvas_ios
//
//  Created by Antonio Olvera on 12/9/21.
//

import Foundation
import UIKit

class MainCanvas:UIView{
    
    var lines = [[CGPoint]]()
    var color = UIColor(named: "black")!.cgColor
    var lineWidth = 3
    
    override func draw(_ rect: CGRect) {
        super.draw(rect)
        
        guard let context = UIGraphicsGetCurrentContext() else { return }
        

        lines.forEach{ (line) in
            
            for (i,p) in line.enumerated(){
                
                if i == 0 {
                    context.move(to: p)
                }
                else {
                    context.addLine(to: p)
//                    context.addQuadCurve(to: p, control: line[i-1])
                }
            }
        }
        
        
        context.setStrokeColor(color)
        context.setLineWidth(CGFloat(lineWidth))
        context.setLineCap(.round)
        context.strokePath()
    }
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        lines.append([CGPoint]())
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        guard let point = touches.first?.location(in: nil) else { return }
        guard var lastLine = lines.popLast() else { return }
        
        lastLine.append(point)
        lines.append(lastLine)
        
        setNeedsDisplay()
    }
    
    
}
