//
//  ContentView.swift
//  Information
//
//  Created by Hyer, Bryce on 10/11/22.
//

import SwiftUI

struct DataView: View
{
    var body: some View
    {
        NavigationView
        {
            List
            {
                Section(header: Text("Buckets"))
                {
                    
                }
                Section(header: Text("Custom"))
                {
                    
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
