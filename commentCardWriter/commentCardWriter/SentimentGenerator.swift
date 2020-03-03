//
//  SentimentGenerator.swift
//  commentCardWriter
//
//  Created by Manners, William (Coll) on 11/02/2020.
//  Copyright © 2020 Manners, William (Coll). All rights reserved.
//

import Foundation


class SentimentGenerator{
    

    static func textGenerator(sentiment: Int, subject: String, area: Int, text: [[String]]) -> String {
        let relevantText = text[area]
        var textSentiment = relevantText[sentiment]
        var thisSubject = subject
        var thisSubjectCaps = subject
        if subject == ""{
            thisSubject = "this subject"
            thisSubjectCaps = "This subject"
        }
        if Int.random(in: 1..<3) == 1{
            textSentiment = textSentiment.replacingOccurrences(of: "$", with: thisSubject) //€ signifies subject at start of sentence, $ signifies in middle
            textSentiment = textSentiment.replacingOccurrences(of: "€", with: thisSubjectCaps)
        }
        else{
            textSentiment = textSentiment.replacingOccurrences(of: "$", with: "this subject")
            textSentiment = textSentiment.replacingOccurrences(of: "€", with: "This subject")
        }
        return textSentiment
    }
    
    static func strengthTextGenerator(strength: String, subject: String) -> String {
        let strengthText: String
        if strength == ""{
            strengthText = ("I do not have any particular strengths in this subject. ")
        } else{
            strengthText = ("I feel I am especially excelling with \(strength). ")
        }
        return (strengthText)
    }
    
    static func weaknessTextGenerator(weakness: String, subject: String) -> String {
        let weaknessText: String
        if weakness == ""{
            weaknessText = ("I am not finding any topic especially hard. ")
        } else{
            weaknessText = ("I need to work especially hard on \(weakness). ")
        }
        return (weaknessText)
    }
    
}
