//
//  ViewController.swift
//  HelloWOrld
//
//  Created by Richard Quinlivan on 2/17/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var myImage : UIImageView!
    @IBOutlet var myButton : UIButton!
    
    var pressedOnce = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func clickedButton(sender: UIButton){
        if(!pressedOnce){
            myImage.alpha = 1
            sender.setTitle("Respond?", for: .normal)
            pressedOnce = true
        }
        else{
            myImage.image = UIImage(named: "general_kenobi.jpg")
            //sender.delete(Any?.self)
        }
        
    }
    
}

