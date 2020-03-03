//
//  CardAssembler.swift
//  commentCardWriter
//
//  Created by Manners, William (Coll) on 11/02/2020.
//  Copyright © 2020 Manners, William (Coll). All rights reserved.
//

import Foundation


class CardAssembler{

    let enjoyment: Int
    let progress: Int
    let EWLength: Int
    let subject: String
    let strength: String
    let weakness: String
    init(enjoyment: Int, progress: Int, EWLength: Int, subject: String, strength: String, weakness: String){
        self.enjoyment = enjoyment
        self.progress = progress
        self.EWLength = EWLength
        self.subject = subject
        self.strength = strength
        self.weakness = weakness
    }
    
    
    func assembler() -> String{
        let text = [["I have not been enjoying $ so far this half. ","I have found $ somewhat enjoyable so far this half. ","€ has been enjoyable so far this half. ","I have really loved $ so far and I'm looking forward to continuing. "],["The EW load has been extremely light in $, I would appreciate some more work to do. ","I have found EW's in $ fairly manageable. ","EW's are tricky in $, but I think I'm managing to stay on top. ","EW's have been overwhelming for me in $ and I would appreciate a few less. "],["I have been really struggling in $ and I would like some help from you. ","I have found $ difficult but manageable. ","€ has been not too difficult for me. ","I feel like I'm really excelling in $. "]]
        let enjoymentText = SentimentGenerator.textGenerator(sentiment: self.enjoyment, subject: self.subject, area: 0, text: text )
        let EWLengthText = SentimentGenerator.textGenerator(sentiment: self.EWLength, subject: self.subject, area: 1, text: text)
        let progressText = SentimentGenerator.textGenerator(sentiment: self.progress, subject: self.subject, area: 2, text: text)
        let weaknessText = SentimentGenerator.weaknessTextGenerator(weakness: self.weakness, subject: self.subject)
        let strengthText = SentimentGenerator.strengthTextGenerator(strength: self.strength, subject: self.subject)
        
        let finalText = enjoymentText+EWLengthText+progressText+weaknessText+strengthText
        return(finalText)
    }
    
}
