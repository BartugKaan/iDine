//
//  iDineApp.swift
//  iDine
//
//  Created by Bartuğ Kaan Çelebi on 3.07.2023.
//

import SwiftUI

@main
struct iDineApp: App {
    
    @StateObject var order = Order()
    
    var body: some Scene {
        WindowGroup {
            MainView()
                .environmentObject(order)
        }
    }
}
