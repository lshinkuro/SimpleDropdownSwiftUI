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
            VStack (alignment: .leading, spacing: 10 ){
                ForEach(self.option, id: \.self) { option in
                    DropdownRow(option: option,
                                onOptionSelected: onOptionSelected)
                }
            }
        }
        .scrollIndicators(.hidden)
        .frame(maxWidth: UIScreen.main.bounds.width,
               minHeight: CGFloat(option.count) * 35,
               maxHeight: 250)
        .padding(.vertical, 5)
        .background(Color.white)
        .cornerRadius(10)
        .overlay(
            RoundedRectangle(cornerRadius: 5).stroke(.gray, lineWidth: 1)
        )
        
    }
}

struct Dropdown_Previews: PreviewProvider {
    static var previews: some View {
        Dropdown(option: dev.options)
            .previewLayout(.sizeThatFits)
            .preferredColorScheme(.dark)
    }
}
