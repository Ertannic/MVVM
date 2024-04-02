//
//  TabBarControllerSettings.swift
//  MVVM
//
//  Created by Ertannic Saralay on 02.04.2024.
//

import UIKit

class TabBarControllerSettings {
    
    static func createMainViewController() -> UIViewController {
        
        let main = MainViewController()
        let mainIcon = UITabBarItem(title: "Main", image: UIImage(systemName: "mail.fill"), selectedImage: UIImage(systemName: "mail.fill"))
        main.tabBarItem = mainIcon
        return main
    }
    
    static func createPurchaseViewController() -> UIViewController {
         
        let purchase = PurchaseViewController()
        let purchaseIcon = UITabBarItem(title: "Purchase", image: UIImage(systemName: "purchased.circle.fill"), selectedImage: UIImage(systemName: "purchased.circle.fill"))
        purchase.tabBarItem = purchaseIcon
        return purchase
    }
    
    static func createRecommendationViewController() -> UIViewController {
        
        let recommnd = RecommendationViewController()
        let recommndIcon = UITabBarItem(title: "Recommendation", image: UIImage(systemName: "list.bullet.rectangle.fill"), selectedImage: UIImage(systemName: "list.bullet.rectangle.fill"))
        recommnd.tabBarItem = recommndIcon
        return recommnd
    }
    
    static func createSettingsViewController() -> UIViewController {
        
        let settings = SettingsViewController()
        let settingsIcon = UITabBarItem(title: "Settings", image: UIImage(systemName: "gearshape.circle.fill"), selectedImage: UIImage(systemName: "gearshape.circle.fill"))
        settings.tabBarItem = settingsIcon
        return settings
    }
}
