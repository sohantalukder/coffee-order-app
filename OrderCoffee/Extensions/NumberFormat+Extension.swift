//
//  NumberFormat+Extension.swift
//  OrderCoffee
//
//  Created by Md Sohan Talukder on 21/11/24.
//

import Foundation

extension NumberFormatter {
    static var currency: NumberFormatter {
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        return formatter
    }
}
