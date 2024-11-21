//
//  ContentView.swift
//  OrderCoffee
//
//  Created by Md Sohan Talukder on 21/11/24.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject private var model: CoffeeModel
    private func populateOrders() async {
        do {
            try await model.populatteOrders()
        } catch {
            print(error)
        }
    }
    var body: some View {
        VStack {
            List(model.orders) { order in
                OrderCellView(order: order)
                
            }.task {
                await populateOrders()
            }
        }
    }
}
#Preview {
    ContentView().environmentObject(CoffeeModel(webService: WebService()))
}

