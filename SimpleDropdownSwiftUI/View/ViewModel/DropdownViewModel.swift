//
//  DropdownViewModel.swift
//  SimpleDropdownSwiftUI
//
//  Created by nur kholis on 10/12/22.
//

import Foundation

import Combine

class DropdownViewModel: ObservableObject {
    
    @Published var dropdownData: [DropdownOption] = [
                    DropdownOption(value: "Sunday"),
                    DropdownOption(value: "Monday"),
                    DropdownOption(value: "Tuesday"),
                    DropdownOption(value: "Wednesday"),
                    DropdownOption(value: "Thusrday"),
                    DropdownOption(value: "Friday"),
                    DropdownOption(value: "Saturday") ]
}
