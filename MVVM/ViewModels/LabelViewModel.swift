//
//  LabelViewModel.swift
//  MVVM
//
//  Created by Ertannic Saralay on 02.04.2024.
//

import UIKit

class LabelsViewModel {
    let labels: [LabelModel]
    
    init() {
        self.labels = [
            LabelModel(text: "Көттi қысқан бай болар"),
            LabelModel(text: "Даньги любят тишину"),
            LabelModel(text: "Все средства хороши, но наличные - лучше"),
            LabelModel(text: "Деньги не волную, они успакаивают"),
            LabelModel(text: "Не принимайте на свой счет ничего...кроме денег")
        ]
    }
}
