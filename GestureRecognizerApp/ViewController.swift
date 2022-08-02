//
//  ViewController.swift
//  GestureRecognizerApp
//
//  Created by Felipe Augusto Correia on 01/08/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var myLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        imageView.isUserInteractionEnabled = true
        
        let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(changePic))
        
        imageView.addGestureRecognizer(gestureRecognizer)
        
    }
    
    @objc func changePic() {
        
        if (imageView.image == UIImage(named: "Dire-Straits1")) {
            imageView.image = UIImage(named: "dire_straits2")
            myLabel.text = "Mark Knopfler"
        } else {
            imageView.image = UIImage(named: "Dire-Straits1")
            myLabel.text = "Dire Straits"
        }
    }
}

