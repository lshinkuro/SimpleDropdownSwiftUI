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
                Text(self.option.value)
                    .font(.system(size: 14))
                    .foregroundColor(.gray)
            }
        }.padding(.horizontal)
         .padding(.vertical, 10)
    }
}

struct DropdownRow_Previews: PreviewProvider {
    
    static var previews: some View {
        DropdownRow(option: dev.option).previewLayout(.sizeThatFits)
    }
}
