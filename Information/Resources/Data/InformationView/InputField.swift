//
//  InputField.swift
//  Information
//
//  Created by Hyer, Bryce on 10/31/22.
//

import SwiftUI

struct InputField: View
{
    let title : String
    let hint : String
    
    @Binding var  result : String
    
    var body: some View
    {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct InputField_Previews: PreviewProvider
{
    static var previews: some View
    {
        InputField(title: "the title", hint: "a hint", result: .constant("The bound value"))
    }
}
