//
//  OrderCoffeeApp.swift
//  OrderCoffee
//
//  Created by Md Sohan Talukder on 21/11/24.
//

import SwiftUI

@main
struct OrderCoffeeApp: App {
    @StateObject private var model: CoffeeModel
    
    init() {
        let webService = WebService()
        _model = StateObject(wrappedValue: CoffeeModel(webService: webService))
    }
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(model)
        }
    }
}
