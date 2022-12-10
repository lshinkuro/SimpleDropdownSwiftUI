//
//  DropdownOptionModel.swift
//  SimpleDropdownSwiftUI
//
//  Created by nur kholis on 10/12/22.
//

import Foundation

struct DropdownOption: Hashable {
    let id = UUID().uuidString
    let value: String
    
    public static func == (lhs: DropdownOption , rhs: DropdownOption) -> Bool {
        return lhs.id == rhs.id
    }
}
