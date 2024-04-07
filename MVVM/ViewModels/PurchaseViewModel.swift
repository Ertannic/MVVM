//
//  PurchaseViewModel.swift
//  MVVM
//
//  Created by Ertannic Saralay on 06.04.2024.
//

import Foundation

class PurchaseViewModel {
    var purchase: [Purchase] = []
    var totalBalance: Int = 1000
    var totalExpenses: Int = 0
    
    func addPurchase(description: String, amount: Int) {
        let newPurchase = Purchase(description: description, amount: amount)
        purchase.append(newPurchase)
        totalBalance -= amount
        totalExpenses += amount
    }
}

