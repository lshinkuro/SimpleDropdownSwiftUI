//
//  Dropdown.swift
//  SimpleDropdownSwiftUI
//
//  Created by nur kholis on 10/12/22.
//

import SwiftUI

struct Dropdown: View {
    
    var option: [DropdownOption]
    var onOptionSelected: ((_ option: DropdownOption)-> Void)?
    
    var body: some View {
        ScrollView {
            VStack (alignment: .leading, spacing: 0 ){
                ForEach(self.option, id: \.self) { option in
                    DropdownRow(option: option,
                                onOptionSelected: onOptionSelected)
                }
                
            }
        }.frame(minHeight: CGFloat(option.count) * 30, maxHeight: 250 )
            .padding(.vertical, 5)
            .background(Color.white)
            .cornerRadius(5)
            .overlay(
                RoundedRectangle(cornerRadius: 5).stroke(.gray, lineWidth: 1)
            )
        
    }
}

struct Dropdown_Previews: PreviewProvider {
    static var uniqueKey: String {
        UUID().uuidString
    }
    
    static let options: [DropdownOption] = [
    DropdownOption(value: "Sunday"),
    ]
    
    static var previews: some View {
        Dropdown(option: options)
    }
}
