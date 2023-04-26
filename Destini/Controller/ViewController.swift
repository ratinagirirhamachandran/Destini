//
//  ViewController.swift
//  Destini
//
//  Created by Ratinagiri Rhamachandran on 09/25/16.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    var storyBrain = StoryBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }

    @IBAction func choiceMade(_ sender: UIButton) {
        
//        if sender.currentTitle == exStory.choice1[0]{
//            updateUI(indexNumber: 1)
//        }else if sender.currentTitle == exStory.choice2[0]{
//            updateUI(indexNumber: 2)
//        }
        
        storyBrain.nextStory(userChoice: sender.currentTitle!)
        updateUI()
        
        
        
    }
    
    func updateUI() {
        storyLabel.text = storyBrain.getLabel()
        choice1Button.setTitle(storyBrain.getChoice1(), for: .normal)
        choice2Button.setTitle(storyBrain.getChoice2(), for: .normal)
        
    }
    

}

