//
//  VideoGamesRowView.swift
//  Information
//
//  Created by Hyer, Bryce on 10/25/22.
//

import SwiftUI

struct VideoGamesRowView: View
{
    var rowVideoGames : VideoGames
    
    var body: some View
    {
        NavigationLink(destination: VideoGamesDetailView(detailedVideoGame: rowVideoGames))
        {
            HStack {
                Text(generateRandomEmoji(of: "Symbol"))
                VStack
                {
                    Text(rowVideoGames.title)
                    Text("\(rowVideoGames.releaseYear)")
                }
            }
        }
    }
}

struct VideoGamesRowView_Previews: PreviewProvider
{
    static var previews: some View
    {
        VideoGamesRowView(rowVideoGames: demoVideoGames)
    }
}
