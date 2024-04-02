//
//  TabBarController.swift
//  MVVM
//
//  Created by Ertannic Saralay on 02.04.2024.
//

import UIKit

class TabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTabBarController()
        setupTabBarViewControllers()
    }
    
    func setupTabBarController() {
        tabBar.tintColor = .systemGray5
        tabBar.backgroundColor = .systemGray6
    }
    
    func setupTabBarViewControllers() {
        
        let controllers = [TabBarControllerSettings.createMainViewController(), TabBarControllerSettings.createPurchaseViewController(), TabBarControllerSettings.createRecommendationViewController(), TabBarControllerSettings.createSettingsViewController()]
        self.setViewControllers(controllers, animated: true)
    }
}
