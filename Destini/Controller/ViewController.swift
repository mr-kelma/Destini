//
//  ViewController.swift
//  Destini
//
//  Created by Valery Keplin on 10.06.22.
//

import UIKit

var storyBrain = StoryBrain()

class ViewController: UIViewController {
    
    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choiceOneButton: UIButton!
    @IBOutlet weak var choiceTwoButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
        playSound()
    }
    
    
    @IBAction func choiceMade(_ sender: UIButton) {
    let _ = storyBrain.nextStory(userChoice: sender.currentTitle!)
    updateUI()
}
    
    @objc func updateUI() {
        storyLabel.text = storyBrain.getStoryText()
        choiceOneButton.setTitle(storyBrain.getChoiceOneText(), for: .normal)
        choiceTwoButton.setTitle(storyBrain.getChoiceTwoText(), for: .normal)
    }
}
