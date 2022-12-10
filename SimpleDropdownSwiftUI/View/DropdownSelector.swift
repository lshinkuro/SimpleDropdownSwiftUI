//
//  DropdownSelector.swift
//  SimpleDropdownSwiftUI
//
//  Created by nur kholis on 10/12/22.
//

import SwiftUI

struct DropdownSelector: View {
    
    @EnvironmentObject var dm: DropdownViewModel

    
    @State private var shouldShowDropdown: Bool = false
    @State private var selectedOption: DropdownOption? = nil
    
    var placeholder: String = "Select Day"
    var onOptionSelected: ((_ option: DropdownOption) -> Void)?
    private let buttonHeight: CGFloat = 45
    
    var body: some View {
        NavigationView {
            ZStack {
                Color(.systemPink)
                    .background()
                    .ignoresSafeArea()
                VStack {
                    
                    Button(action: {
                        self.shouldShowDropdown.toggle()
                    }){
                        HStack {
                            Text( selectedOption == nil ? placeholder : selectedOption!.value)
                                .font(.system(size: 14))
                                .foregroundColor(selectedOption == nil ? .gray : .black)
                            Spacer()
                            
                            Image(systemName: selectedOption == nil ? "arrowtriangle.up.fill" : "arrowtriangle.down.fill")
                                .resizable()
                                .frame(width: 9,height: 5)
                                .font(.caption)
                                .foregroundColor(.gray)
                            
                        }
                    }
                    .frame(width: UIScreen.main.bounds.width, height: self.buttonHeight)
                    .padding(.horizontal, 20)
                    .cornerRadius(5)
                    .overlay(
                        RoundedRectangle(cornerRadius: 5).stroke(.gray, lineWidth: 1))
                    .overlay(
                        VStack {
                            if self.shouldShowDropdown {
                                Spacer(minLength: buttonHeight + 10)
                                
                                Dropdown(option: dm.dropdownData , onOptionSelected: {
                                    option in
                                    shouldShowDropdown = false
                                    selectedOption = option
                                    self.onOptionSelected?(option)
                                })
                                
                            }
                        } , alignment: .topLeading
                    ).background(
                        RoundedRectangle(cornerRadius: 5).fill(.white)
                    )
                }

            }.navigationTitle("Simple Dropdown")
        }

    }
}

struct DropdownSelector_Previews: PreviewProvider {

    let homeVm = DropdownViewModel()

    static var previews: some View {
        NavigationView {
            DropdownSelector()
        }.environmentObject(dev.homeVm)
    }
}

extension PreviewProvider {
    
    static var dev: DeveloperPreview {
        return DeveloperPreview.instance
    }
}

class DeveloperPreview {
    static let instance = DeveloperPreview()
    
    init() {}
    
    let homeVm = DropdownViewModel()
}
