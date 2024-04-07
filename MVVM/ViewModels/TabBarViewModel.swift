//
//  TabBarViewModel.swift
//  MVVM
//
//  Created by Ertannic Saralay on 03.04.2024.
//

import Foundation

class TabBarViewModel {
    let items: [TabBarItem] = [
        
        TabBarItem(title: "Главная",
                   imageName: "mail.fill",
                   selectedImageName: "mail.fill"),
        
        TabBarItem(title: "Покупки",
                   imageName: "purchased.circle.fill",
                   selectedImageName: "purchased.circle.fill"),
        
        TabBarItem(title: "Рекомендации",
                   imageName: "list.bullet.rectangle.fill",
                   selectedImageName: "list.bullet.rectangle.fill"),
        
        TabBarItem(title: "Настройки",
                   imageName: "gearshape.circle.fill",
                   selectedImageName: "gearshape.circle.fill")
    ]
}
