//
//  BucketStore.swift
//  Information
//
//  Created by Hyer, Bryce on 10/25/22.
//

import Foundation
import Combine

class BucketStore : ObservableObject
{
    @Published var buckets : [BucketListItem]
    {
        didSet
        {
            let encoder = JSONEncoder()
            if let encodedBuckets = try? encoder.encode(buckets)
            {
                UserDefaults.standard.set(encodedBuckets, forKey: "Saved Buckets")
            }
        }
    }
    
    init(buckets : [BucketListItem])
    {
        self.buckets = buckets
    }
    
}





