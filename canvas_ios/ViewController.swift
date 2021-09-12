//
//  ViewController.swift
//  canvas_ios
//
//  Created by Antonio Olvera on 12/9/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var btSave: UIButton!
    @IBOutlet weak var container: UIView!
    @IBOutlet weak var bgSignature: UIImageView!
    
    fileprivate var canvas: MainCanvasController?
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        setUpView()
    }
    
    fileprivate func setUpView(){
        
        btSave.layer.cornerRadius = 12
        configCanvas()
    }
    
    fileprivate func configCanvas() {
        
        canvas = MainCanvasController()
        container.addSubview(canvas!)
        canvas!.frame = container.bounds
        canvas!.backgroundColor = UIColor(named: "transparent")
    }
    
    @IBAction func pressBtSave(_ sender: UIButton) {
        canvas?.cleanView()
    }
    
}

