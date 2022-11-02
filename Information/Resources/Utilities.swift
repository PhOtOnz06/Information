//
//  Utilities.swift
//  Information
//
//  Created by Hyer, Bryce on 10/17/22.
//

import Foundation




//MARK: - Preview Values
let demoBucket : BucketListItem = BucketListItem(year: 1999, goal: "Destroy the world!!", creature: "Pochita")

let demoVideoGames : VideoGames = VideoGames(title: "Mario Kart Wii", genre: "Racing", publisher: "Nintendo", console: "Nintedo Wii", rating: "T", releaseYear: 2008, averageGameLength: 11.4, leisurePlayLength: 30.13333333, medianGameLength: 11.5, rushedGameLength: 9.71666667)


//MARK: - Internal URL for Files
let randomInfoURL = Bundle.main.url(forResource: "randomness", withExtension: "pdf")!
let dataViolationsURL = Bundle.main.url(forResource: "data Control", withExtension: "pdf")!



//MARK: - Helper methods for random strings
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

func randomString() -> String
{
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

//MARK: - Load JSON Data from device

func loadJSON ( from file : String) -> [Any]
{
    if let dataSourceURL = Bundle.main.url(forResource: file, withExtension: "json")
    {
        let data = try! Data(contentsOf: dataSourceURL)
        let decoder = JSONDecoder()
        do
        {
            if (file == "Buckets2022")
            {
                let results = try decoder.decode([BucketListItem].self, from: data)
                return results
            }
            else if (file == "csvjson")
            {
                let results = try decoder.decode([VideoGames].self, from: data)
                return results
            }
        }
        catch
        {
            print(error.localizedDescription)
        }
        
        
        
    }
    
    
    
    
    
    
    return [Any]() // Major Data load failure!
}
