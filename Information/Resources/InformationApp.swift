//
//  InformationApp.swift
//  Information
//
//  Created by Hyer, Bryce on 10/11/22.
//

import SwiftUI

@main
struct InformationApp: App
{
    @StateObject private var storedBuckets : BucketStore = BucketStore(buckets: loadJSON(from: "Buckets2022") as! [BucketListItem])
    var body: some Scene
    {
        WindowGroup
        {
            DataView()
                .environmentObject(storedBuckets)
        }
    }
}
