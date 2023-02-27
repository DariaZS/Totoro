//
//  DetailViewController.swift
//  Totoro
//
//  Created by Daria Strait on 2/27/23.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var imageA: UIImageView!
    
    @IBOutlet weak var textLabel: UILabel!
    
    
    
    var choice: Choice?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let choice = choice {
            // Configure the dinosaur image and dynamic labels
            imageA.image = choice.image
            textLabel.text = choice.text
            
        }
        if let choice = choice {
            print(choice.text)
            
        }
    }
    

        
    }

