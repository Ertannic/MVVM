//
//  CustomTabBarController.swift
//  MVVM
//
//  Created by Ertannic Saralay on 03.04.2024.
//
import UIKit

class CustomTabBarController: UITabBarController {
    let viewModel = TabBarViewModel()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupTabBarController()
        setupTabBar()
    }
    
    func setupTabBarController() {
        tabBar.tintColor = .systemGray5
        tabBar.backgroundColor = .systemGray6
    }

    func setupTabBar() {
            var viewControllers: [UIViewController] = []

            for item in viewModel.items {
                let rootViewController: UIViewController
                switch item.title {
                case "Главная":
                    rootViewController = MainViewController()
                case "Покупки":
                    rootViewController = PurchaseViewController()
                case "Рекомендации":
                    rootViewController = RecommendationViewController()
                case "Настройки":
                    rootViewController = SettingsViewController()
                default:
                    rootViewController = UIViewController()
                }
                
                let navigationController = UINavigationController(rootViewController: rootViewController)
                navigationController.tabBarItem = UITabBarItem(title: item.title,
                                                                 image: UIImage(systemName: item.imageName),
                                                                 selectedImage: UIImage(systemName: item.selectedImageName))
                viewControllers.append(navigationController)
            }

            self.setViewControllers(viewControllers, animated: true)
        }
}
