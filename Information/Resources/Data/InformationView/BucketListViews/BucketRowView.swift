//
//  BucketRowView.swift
//  Information
//
//  Created by Hyer, Bryce on 10/13/22.
//

import SwiftUI

struct BucketRowView: View
{
    var rowBucket : BucketListItem
    var emoji : String
    
    var body: some View
    {
        NavigationLink(destination: BucketDetailView(detailedBucket: rowBucket))
        {
            HStack
            {
                Spacer()
                Text(emoji).font(.largeTitle)
                Spacer()
                VStack
                {
                    Text("Year: \(String(rowBucket.year))")
                    Text(rowBucket.creature)
                }
                .frame(minWidth: 0, maxWidth: .infinity)
        }
        }
    }
}

struct BucketRowView_Previews: PreviewProvider
{
    static var previews: some View
    {
        BucketRowView(rowBucket: demoBucket, emoji: generateRandomEmoji(of: ""))
    }
}
