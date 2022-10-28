//
//  ContentView.swift
//  Information
//
//  Created by Hyer, Bryce on 10/11/22.
//

import SwiftUI

struct DataView: View
{
    @ObservedObject var storedBuckets : BucketStore = BucketStore(buckets: loadJSON(from: "Buckets2022") as! [BucketListItem])
    
    @ObservedObject var storedVideoGames = VideoGamesStore(videoGameData: loadJSON(from: "csvjson") as! [VideoGames])
    
    var body: some View
    {
        NavigationView
        {
            List
            {
                Section(header: Text("Buckets"))
                {
                    ForEach (storedBuckets.buckets)
                    {
                        bucket in
                        
                        BucketRowView(rowBucket: bucket, emoji: generateRandomEmoji(of: "face"))
                    }
                    
                }
                Section(header: Text("Custom"))
                {
                    ForEach(storedVideoGames.gameData.indices, id : \.self)
                    {
                        index in
                        
                        let currentVideoGames = storedVideoGames.gameData[index]
                        
                        VideoGamesRowView(rowVideoGames: currentVideoGames)
                    }
                }
                Section(header: Text("Project Data"))
                {
                    
                }
            }
        }
    }
}

struct DataView_Previews: PreviewProvider
{
    static var previews: some View
    {
        DataView()
    }
}
