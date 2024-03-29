//
//  BucketDetailView.swift
//  Information
//
//  Created by Hyer, Bryce on 10/13/22.
//

import SwiftUI

struct BucketDetailView: View
{
    var detailedBucket : BucketListItem
    var body: some View
    {
        ZStack
        {
            Color.purple
                .edgesIgnoringSafeArea(.all)
            VStack
            {
                Text("Year: \(String(detailedBucket.year))")
                Text("BUCKET!!")
                Image("bucket")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Text("DEAR GOLLY GOSH, A BUCKET!!")
                Text(detailedBucket.creature)
                Text(detailedBucket.goal)
            }
        }
    }
}

struct BucketDetailView_Previews: PreviewProvider
{
    static var previews: some View
    {
        BucketDetailView(detailedBucket: demoBucket)
    }
}
