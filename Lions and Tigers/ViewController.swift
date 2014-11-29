//
//  ViewController.swift
//  Lions and Tigers
//
//  Created by Oscar on 17/10/14.
//  Copyright (c) 2014 uinik. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var breedLabel: UILabel!
    
    
    /**
    *   Array de tigers, nótese que se pone como propiedad a la clase
    */
    var tigres:[Tiger] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        var tiger = Tiger()
        tiger.age = 3
        tiger.name = "tigrito!"
        tiger.breed = "bengal"
        tiger.image = UIImage(named: "BengalTiger.jpg")
        
        imageView.image = tiger.image
        nameLabel.text  = tiger.name
        ageLabel.text   = "\(tiger.age)"
        breedLabel.text = tiger.breed
        
        
        var tiger2 = Tiger()
        tiger2.age = 3
        tiger2.name = "tegro!"
        tiger2.breed = "indochainis"
        tiger2.image = UIImage(named: "IndochineseTiger.jpg")
        
        var tiger3 = Tiger()
        tiger3.age = 3
        tiger3.name = "tugro!"
        tiger3.breed = "malayan"
        tiger3.image = UIImage(named: "MalayanTiger.jpg")
        
        var tiger4 = Tiger()
        tiger4.age = 3
        tiger4.name = "tagro!"
        tiger4.breed = "siberian"
        tiger4.image = UIImage(named: "SiberianTiger.jpg")
        
        
        tigres.append(tiger)
        
        tigres += [tiger2, tiger3, tiger4]
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func nextButtonPressed(sender: UIBarButtonItem) {
        
        var randomNumber = Int(arc4random_uniform(UInt32(tigres.count)))
        
        var tiger = tigres[randomNumber]
//        
//        imageView.image = tiger.image
//        nameLabel.text  = tiger.name
//        ageLabel.text   = "\(tiger.age)"
//        breedLabel.text = tiger.breed
        
        UIView.transitionWithView(self.view, duration: 2, options: UIViewAnimationOptions.TransitionCurlDown,
            animations: {
                
                self.imageView.image = tiger.image
                self.nameLabel.text  = tiger.name
                self.ageLabel.text   = "\(tiger.age)"
                self.breedLabel.text = tiger.breed
                
            }, completion: {
                (finished: Bool) -> () in
            }
        )
        
        
        
        
    }
    
    

}



















