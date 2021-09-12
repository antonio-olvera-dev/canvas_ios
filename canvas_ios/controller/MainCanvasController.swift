//
//  MainCanvasController.swift
//  canvas_ios
//
//  Created by Antonio Olvera on 12/9/21.
//

import Foundation



class MainCanvasController:MainCanvas {
    

    func cleanView() {

        lines.removeAll()
        setNeedsDisplay()
    }

    
    func parseToJpeg() -> String {


        return "Base64.encodeToString(byteArray, Base64.DEFAULT)"
    }


}
