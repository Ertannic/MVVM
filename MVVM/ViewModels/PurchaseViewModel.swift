//
//  PurchaseViewModel.swift
//  MVVM
//
//  Created by Ertannic Saralay on 06.04.2024.
//

import Foundation

class PurchaseViewModel {
    var purchase: [Purchase] = []

        func addPurchase(description: String, amount: Int) {
        let newPurchase = Purchase(description: description, amount: amount, date: Date())
        purchase.append(newPurchase)
    }
}
