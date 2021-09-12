//
//  MainCanvasController.swift
//  canvas_ios
//
//  Created by Antonio Olvera on 12/9/21.
//

import Foundation
import UIKit



class MainCanvasController:MainCanvas {
    

    func cleanView() {

        lines.removeAll()
        setNeedsDisplay()
    }

    
    func parseToBase64() -> String {

        let renderer = UIGraphicsImageRenderer(bounds: bounds)
        let image:UIImage = renderer.image { rendererContext in layer.render(in: rendererContext.cgContext) }
        let imagePng = image.pngData()

        return imagePng?.base64EncodedString() ?? ""
    }


}
