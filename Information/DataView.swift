//
//  ContentView.swift
//  Information
//
//  Created by Hyer, Bryce on 10/11/22.
//

import SwiftUI

struct DataView: View
{
    @EnvironmentObject var storedBuckets : BucketStore
    
    @ObservedObject var storedVideoGames = VideoGamesStore(videoGameData: loadJSON(from: "csvjson") as! [VideoGames])
    
    @State private var showAddBucketListItem : Bool = false
    
    var body: some View
    {
        NavigationView
        {
            VStack
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
                        .onDelete(perform: removeBucketItems)
                        
                    }
                    Section(header: Text("Custom"))
                    {
                        ForEach(storedVideoGames.gameData.indices, id : \.self)
                        {
                            index in
                            
                            let currentVideoGames = storedVideoGames.gameData[index]
                            
                            VideoGamesRowView(rowVideoGames: currentVideoGames)
                        }
                        .onDelete(perform: removeVideoGames)
                    }
                    Section(header: Text("Project Data"))
                    {
                        NavigationLink("About Random", destination: CustomPDFView(displayPDFURL: randomInfoURL))
                        NavigationLink("Data Violations!!", destination: CustomPDFView(displayPDFURL: dataViolationsURL))
                    }
            }
                .navigationTitle("Data and Information")
                .toolbar
                {
                    ToolbarItem(placement: .navigationBarLeading)
                    {
                        EditButton()
                    }
                    ToolbarItem(placement: .navigationBarTrailing)
                    {
                        Button (action: {self.showAddBucketListItem.toggle() }){Image(systemName: "plus")}
                    }
                }
            }
        }
        .sheet(isPresented: $showAddBucketListItem)
        {
            AddBucketListItemView()
        }
    }
    
    
    
    private func removeBucketItems(at offsets: IndexSet) -> Void
    {
        storedBuckets.buckets.remove(atOffsets: offsets)
    }
    
    private func removeVideoGames(at offsets: IndexSet) -> Void
    {
        storedVideoGames.gameData.remove(atOffsets: offsets)
    }
}

struct DataView_Previews: PreviewProvider
{
    static var previews: some View
    {
        DataView()
            .environmentObject(BucketStore(buckets: loadJSON(from: "Buckets2022") as! [BucketListItem]))
    }
}
