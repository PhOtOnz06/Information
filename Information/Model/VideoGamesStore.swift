//
//  VideoGamesStore.swift
//  Information
//
//  Created by Hyer, Bryce on 10/25/22.
//

import Foundation
import Combine

class VideoGamesStore: ObservableObject
{
    @Published var gameData : [VideoGames]
    {
        didSet
        {
            let encoder = JSONEncoder()
            if let encodedVideoGames = try? encoder.encode(gameData)
            {
                UserDefaults.standard.set(encodedVideoGames, forKey: "Saved Video Games")
            }
        }
    }
    
    
    init (videoGameData : [VideoGames])
    {
        if let storedOnDevice = UserDefaults.standard.data(forKey: "Saved Video Games")
        {
            let decoder = JSONDecoder()
            if let savedVideoGames = try? decoder.decode([VideoGames].self, from: storedOnDevice)
            {
                if (savedVideoGames.count <= 50)
                {
                    self.gameData = savedVideoGames
                    return
                }
            }
        }
        self.gameData = videoGameData
    }
}
