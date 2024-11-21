//
//  CoffeeModel.swift
//  OrderCoffee
//
//  Created by Md Sohan Talukder on 21/11/24.
//

import Foundation

@MainActor
class CoffeeModel: ObservableObject {
    
    let webService: WebService
    
    @Published private(set) var orders: [Order] = []
    
    init(webService: WebService) {
        self.webService = webService
    }
    
    func populatteOrders() async throws {
        orders = try await webService.getOrders()
    }
}
