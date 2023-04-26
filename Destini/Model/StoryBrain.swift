//
//  StoryBrain.swift
//  Destini
//
//  Created by Ratinagiri Rhamachandran on 09/25/16.
//

import Foundation

struct StoryBrain {
    let stories = [
        Story(title: "You see a fork in the road", choice1: "Take a left", choice1Destination: 1, choice2: "Take a right", choice2Destination: 2),
        Story(title: "You see a tiger", choice1: "Shout for help", choice1Destination: 3, choice2: "Play dead", choice2Destination: 0),
        Story(title: "You find a treasure chest", choice1: "Open it", choice1Destination: 4, choice2: "Check for traps", choice2Destination: 0),
        Story(title: "People arrives with weapons", choice1: "Kill Tiger", choice1Destination: 0, choice2: "Rescue you", choice2Destination: 5),
        Story(title: "Jewels are there", choice1: "Take it", choice1Destination: 6, choice2: "Leave it", choice2Destination: 0),
        Story(title: "Take you to their home", choice1: "Go home", choice1Destination: 0, choice2: "Go to office", choice2Destination: 0),
        Story(title: "Take the jewels home", choice1: "Safeguard it", choice1Destination: 0, choice2: "Sell it", choice2Destination: 0)
        
    ]
    
    var storyNumber = 0
    
    mutating func nextStory(userChoice: String) {
        if userChoice == stories[storyNumber].choice1 {
            storyNumber = stories[storyNumber].choice1Destination
        } else if userChoice == stories[storyNumber].choice2 {
            storyNumber = stories[storyNumber].choice2Destination
            
        }
    }
    
    func getLabel() -> String {
        return stories[storyNumber].title
            }
    
    func getChoice1() -> String {
        return stories[storyNumber].choice1
    }
    
    func getChoice2() -> String {
        return stories[storyNumber].choice2
    }
    
}


