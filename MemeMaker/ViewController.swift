//
//  ViewController.swift
//  MemeMaker
//
//  Created by Алихан Батчаев on 05.11.2019.
//  Copyright © 2019 Alikhan Batchaev. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var topCaptionSegmentedControl: UISegmentedControl!
    
    @IBOutlet var bottomCaptionSegmentedControl: UISegmentedControl!
    
    @IBOutlet var topCaptionLabel: UILabel!
    @IBOutlet var bottomCaptionLabel: UILabel!
    
    var topChoices = [CaptionOption]()
    var bottomChoices = [CaptionOption]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let coolChoice = CaptionOption(emoji: "🕶", caption: "You know what's cool?")
        let madChoice = CaptionOption(emoji: "💥", caption: "You know what makes me mad?")
        let loveChoice = CaptionOption(emoji: "💕", caption: "You know what o love?")
        
        topChoices = [coolChoice, madChoice, loveChoice]
        
        topCaptionSegmentedControl.removeAllSegments()
        for choice in topChoices {
            topCaptionSegmentedControl.insertSegment(withTitle: choice.emoji, at: topChoices.count, animated: false)
        }
        topCaptionSegmentedControl.selectedSegmentIndex = 0
        
        let catChoice = CaptionOption(emoji: "🐱", caption: "Cats wearing hats")
        let dogChoice = CaptionOption(emoji: "🐶", caption: "Dogs carrying logs")
        let monkeyChoice = CaptionOption(emoji: "🐵", caption: "Monkeys being funky")
        
        bottomChoices = [catChoice, dogChoice, monkeyChoice]
        
        bottomCaptionSegmentedControl.removeAllSegments()
        for choice in bottomChoices {
            bottomCaptionSegmentedControl.insertSegment(withTitle: choice.emoji, at: bottomChoices.count, animated: false)
        }
        bottomCaptionSegmentedControl.selectedSegmentIndex = 0
        
        updateLabels()
        
    }
    
    func updateLabels() {
        let topIndex = topCaptionSegmentedControl.selectedSegmentIndex
        let bottomIndex = bottomCaptionSegmentedControl.selectedSegmentIndex
        
        let topChoice = topChoices[topIndex]
        let bottomChoice = bottomChoices[bottomIndex]
        
        topCaptionLabel.text = topChoice.caption
        bottomCaptionLabel.text = bottomChoice.caption
    }
    
    @IBAction func choiceSelected(_ sender: UISegmentedControl) {
        updateLabels()
    }
    
}

