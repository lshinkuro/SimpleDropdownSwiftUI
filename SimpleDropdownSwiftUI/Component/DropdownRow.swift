//
//  DropdownRow.swift
//  SimpleDropdownSwiftUI
//
//  Created by nur kholis on 10/12/22.
//

import SwiftUI

struct DropdownRow: View {
    
    var option: DropdownOption
    var onOptionSelected: ((_ option: DropdownOption)-> Void)?
    
    var body: some View {
        Button(action: {
            if let onOptionSelected = self.onOptionSelected {
                onOptionSelected(option)
            }
        }) {
            HStack {
                Text(self.option.value).font(.system(size: 14))
            }
        }.padding(.horizontal, 16)
            .padding(.vertical, 5)
    }
}

struct DropdownRow_Previews: PreviewProvider {
    
    static let options: DropdownOption = DropdownOption(value: "Sunday")
    static var previews: some View {
        DropdownRow(option: options)
    }
}
