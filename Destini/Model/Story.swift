//
//  Story.swift
//  Destini
//
//  Created by Valery Keplin on 10.06.22.
//

import Foundation

struct Story {
    let title: String
    let choiceOne: String
    let choiceOneDestination: Int
    let choiceTwo: String
    let choiceTwoDestination: Int
    
    init(title: String, choiceOne: String, choiceOneDestination: Int, choiceTwo: String, choiceTwoDestination: Int) {
        self.title = title
        self.choiceOne = choiceOne
        self.choiceOneDestination = choiceOneDestination
        self.choiceTwo = choiceTwo
        self.choiceTwoDestination = choiceTwoDestination
    }
}
