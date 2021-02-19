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
    @IBOutlet var locationXSlider : UISlider!
    @IBOutlet var locationYSlider : UISlider!
    @IBOutlet var XLabel : UILabel!
    @IBOutlet var YLabel : UILabel!

    
    var pressedOnce = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
//        locationXSlider
        
    }


    @IBAction func clickedButton(_ sender: UIButton){
        if(!pressedOnce){
            locationXSlider.isEnabled = true
            locationXSlider.value = 50.0
            locationYSlider.isEnabled = true
            locationYSlider.value = 50.0
            XLabel.isEnabled = true
            YLabel.isEnabled = true
            myImage.isHidden = false
            myButton.setTitle("Respond?", for: .normal)
            pressedOnce = true
        }
        else{
            myImage.image = UIImage(named: "general_kenobi.jpg")
            myButton.isEnabled = false
        }
        
    }
    
    @IBAction func moveXSlider(_ sender: UISlider){
        myImage.center.x = 135.0 + CGFloat(locationXSlider.value)
        XLabel.text = String(locationXSlider.value)
    }
    
    @IBAction func moveYSlider(_ sender: UISlider){
        myImage.center.y = 135.0 + CGFloat(locationYSlider.value)
        YLabel.text = String(locationYSlider.value)
    }
    
}

