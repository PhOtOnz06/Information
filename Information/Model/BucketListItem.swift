//
//  BucketListItem.swift
//  Information
//
//  Created by Hyer, Bryce on 10/13/22.
//

import Foundation

struct BucketListItem : Codable, Identifiable
{
    var id = UUID()
    var year : Int
    var goal : String
    var creature : String
    
}


