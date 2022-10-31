//
//  AddBucketListItemView.swift
//  Information
//
//  Created by Hyer, Bryce on 10/31/22.
//

import SwiftUI

struct AddBucketListItemView: View
{
    @Environment(\.dismiss) var dismiss
    @ObservedObject var storedBuckets : BucketStore
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
            if (!author.isEmpty && !bucketListItem.isEmpty)
            {
                Button("Add me to the data store!", action: addBucketItemToDataStore)
                    .padding(.horizontal, 50)
            }
        }
    }
    private func addBucketItemToDataStore() -> Void
    {
        let year = Calendar.current.component(.year, from: Date())
        let newBucketListItem : BucketListItem = BucketListItem(year: year, goal: bucketListItem, creature: author)
        storedBuckets.buckets.insert(newBucketListItem, at: 0)
        dismiss()
    }
}

//struct AddBucketListItemView_Previews: PreviewProvider
//{
//    static var previews: some View
//    {
//        AddBucketListItemView()
//    }
//}
