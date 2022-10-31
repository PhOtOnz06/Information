//
//  AddBucketListItemView.swift
//  Information
//
//  Created by Hyer, Bryce on 10/31/22.
//

import SwiftUI

struct AddBucketListItemView: View
{
    //@ObservedObject var storedBuckets : BucketStore
    @State var author : String = ""
    @State var bucketListItem : String = ""
    
    
    
    var body: some View
    {
        Form
        {
            Section(header: Text("Make a new Bucket List Item!")
                .font(.largeTitle)
                .foregroundColor(.cyan)
                .multilineTextAlignment(.center))
            {
                InputField(title: "Creature", hint: "Who made this goal", result: $author)
                InputField(title: "The Goal!", hint: "What do you want to do?", result: $bucketListItem)
            }
        }
    }
}

struct AddBucketListItemView_Previews: PreviewProvider
{
    static var previews: some View
    {
        AddBucketListItemView()
    }
}
