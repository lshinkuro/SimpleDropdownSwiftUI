//
//  SimpleDropdownSwiftUIApp.swift
//  SimpleDropdownSwiftUI
//
//  Created by nur kholis on 10/12/22.
//

import SwiftUI

@main
struct SimpleDropdownSwiftUIApp: App {
    
    @StateObject private var dropdownViewModel: DropdownViewModel = DropdownViewModel()

    
    init() {
        UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: UIColor(.white)]
        UINavigationBar.appearance().titleTextAttributes = [.foregroundColor: UIColor(.green)]
    }
    
    var body: some Scene {
        WindowGroup {
            NavigationView{
                DropdownSelector().toolbar(.hidden)
            }.environmentObject(dropdownViewModel)        }
    }
}
