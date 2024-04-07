//
//  SettingsViewController.swift
//  MVVM
//
//  Created by Ertannic Saralay on 02.04.2024.
//

import UIKit
import SnapKit

class SettingsViewController: UIViewController {
    
    var viewModel = SettingsViewModel()
    
    // MARK: - UI
    private lazy var tableView: UITableView = {
        let tableView = UITableView(frame: view.bounds, style: .grouped)
        tableView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "SettingsCell")
        return tableView
    }()
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Настройки"
        setupViews()
        setupConstraints()
    }
    
    // MARK: - Setups
    private func setupViews() {
        view.addSubview(tableView)
    }
    
    private func setupConstraints() {
        tableView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
    }
}

// MARK: - Extension
extension SettingsViewController: UITableViewDelegate, UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return viewModel.settingsItems.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.settingsItems[section].count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SettingsCell", for: indexPath)
        let item = viewModel.settingsItems[indexPath.section][indexPath.row]
        cell.textLabel?.text = item.title
        cell.detailTextLabel?.text = item.value
        return cell
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0 {
            return "Главные Настройки"
        } else {
            return "Второстепенные Настройки"
        }
    }
}
