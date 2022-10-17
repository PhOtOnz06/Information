//
//  Utilities.swift
//  Information
//
//  Created by Hyer, Bryce on 10/17/22.
//

import Foundation

let demoBucket : BucketListItem = BucketListItem(year: 1999, goal: "Destroy the world!!", creature: "Pochita")

let randomInfoURL = Bundle.main.url(forResource: "", withExtension: "pdf")
let dataViolationsURL = Bundle.main.url(forResource: "", withExtension: "pdf")

func generateRandomEmoji (of emojiType: String) -> String
{
    let currentEmoji : String
    
    let start : Int
    let range : Int
    
    if (emojiType == "face")
    {
        start = 0x1f601
        range = 79
    }
    else if (emojiType == "Symbol")
    {
        start = 0x1f680
        range = 70
    }
    else if (emojiType == "food-prepared")
    {
        start = 0x1f35e
        range = 33
    }
    else if (emojiType == "place-geograpic")
    {
        start = 0x1f3d4
        range = 8
    }
    else if (emojiType == "sky & weather")
    {
        start = 0x1f311
        range = 46
    }
    else
    {
        start = 0x1f400
        range = 52
    }
    let unicodeValue = start + Int(arc4random_uniform(UInt32(range)))
    currentEmoji = UnicodeScalar (unicodeValue)?.description ?? "😱"
    
    
    return currentEmoji
}

func randomString() -> String{
    let choice = arc4random()
    
    if (choice % 5 == 0)
    {
        return "face"
    }
    else if (choice % 5 == 1)
    {
        return "Symbol"
    }
    else if (choice % 5 == 2)
    {
        return "place-geographic"
    }else if (choice % 5 == 3)
    {
        return "sky & weather"
    }
    else
    {
        return "food-prepared"
    }
    
    
    
}
