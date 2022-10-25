//
//  VideoGamesDetailView.swift
//  Information
//
//  Created by Hyer, Bryce on 10/25/22.
//

import SwiftUI

struct VideoGamesDetailView: View
{
    var detailedVideoGame : VideoGames
    
    var body: some View
    {
        VStack
        {
            Text("Video Game Item Detailed")
                .accessibilityLabel("Detailed Video Game Title")
                .accessibilityValue("Video game Item Details")
                .padding()
            HStack
            {
                Text("Title:\n\(detailedVideoGame.title)")
                    .accessibilityLabel("Detailed Video Game Title")
                    .accessibilityValue("Title:\n\(detailedVideoGame.title)")
                VStack
                {
                    Text("Genre: \(detailedVideoGame.genre)")
                        .accessibilityLabel("Detailed Video Game Genre")
                        .accessibilityValue("Genre: \(detailedVideoGame.genre)")
                    Text("Publisher: \(detailedVideoGame.publisher)")
                        .accessibilityLabel("Detailed Video Game Publisher")
                        .accessibilityValue("Publisher: \(detailedVideoGame.publisher)")
                    Text("Console: \(detailedVideoGame.console)")
                        .accessibilityLabel("Detailed Video Game Console")
                        .accessibilityValue("Console: \(detailedVideoGame.console)")
                    Text("Rating: \(detailedVideoGame.rating)")
                        .accessibilityLabel("Detailed Video Game Rating")
                        .accessibilityValue("Rating: \(detailedVideoGame.rating)")
                }
        }
        }
    }
}

struct VideoGamesDetailView_Previews: PreviewProvider {
    static var previews: some View {
        VideoGamesDetailView(detailedVideoGame: demoVideoGames)
    }
}
