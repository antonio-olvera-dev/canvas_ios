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
    
    var canvas: MainCanvas?
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        setUpView()
    }


    func setUpView(){
        
        btSave.layer.cornerRadius = 12
        
        canvas = MainCanvas()
            
        
        container.addSubview(canvas!)
        canvas!.frame = container.bounds
        canvas!.backgroundColor = .red

        
        
    }
    
    @IBAction func pressBtSave(_ sender: UIButton) {
        
    }
    
}

