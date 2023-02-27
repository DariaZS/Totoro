//
//  ViewController.swift
//  Totoro
//
//  Created by Daria Strait on 2/26/23.
//

import UIKit

class ViewController: UIViewController {
    //Describe each choice
    let describe = Choice(image: UIImage(named:"description")!, text: "Totoro is a fictional character \n and the titular character of the 1988 Japanese animated film My Neighbor Totoro,\n directed by Hayao Miyazaki and produced by Studio Ghibli.\n Totoro is a forest spirit who is revered by the inhabitants of the surrounding forest.")
    let activity = Choice(image: UIImage(named:"activity")!, text: "Totoro is generally depicted as a friendly, gentle character who enjoys playing with children. He is often seen lounging or sleeping in the forest, and his presence is said to bring good luck and joy to those who encounter him. Totoro communicates through roars and grunts, and is not able to speak human language.")
    let story = Choice(image: UIImage(named: "story")!, text: "In the movie, Totoro plays a central role in the story, helping two young sisters, Mei and Satsuki, navigate the challenges of moving to a new home and coping with their mother's illness. He becomes a friend and protector to the girls, helping them find joy and wonder in the natural world around them.")
    // Array for storing Choices
    
    
    
    var choices: [Choice] = [ ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Store choices
        choices = [describe,activity,story]
        
    }
    
    
    
    @IBAction func viewDidLoad(_ sender: UITapGestureRecognizer) {
        
        if let tappedView = sender.view {
            performSegue(withIdentifier: "detailSegue", sender: tappedView)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        if segue.identifier == "detailSegue",
            let tappedView = sender as? UIView,
            let detailViewController = segue.destination as? DetailViewController {

            if tappedView.tag == 0 {
                detailViewController.choice = choices[0]
            } else if tappedView.tag == 1 {
                detailViewController.choice = choices[1]
            } else if tappedView.tag == 2 {
                detailViewController.choice = choices[2]
            } else {
                print("no choice was tapped, please check your selection.")
            }
        }
        
        
    }

    
    
}
