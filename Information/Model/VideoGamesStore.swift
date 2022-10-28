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
    
    init (videoGameData : [VideoGames])
    {
        self.gameData = videoGameData
    }
}
