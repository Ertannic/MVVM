//
//  SettingsViewController.swift
//  MVVM
//
//  Created by Ertannic Saralay on 02.04.2024.
//

import UIKit
import SnapKit

class SettingsViewController: UIViewController {
    
    // MARK - Outlets
    
    private lazy var tableView: UITableView = {
        let tableView = UITableView(frame: .zero, style: .plain)
        return tableView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "Настройки"
        
        
    }
}
