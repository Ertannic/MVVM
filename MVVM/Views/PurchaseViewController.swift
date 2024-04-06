//
//  PurchaseViewController.swift
//  MVVM
//
//  Created by Ertannic Saralay on 02.04.2024.
//

import UIKit

class PurchaseViewController: UIViewController {
    
    let viewModel = PurchaseViewModel()
    
    private lazy var tableView: UITableView = {
        let tableView = UITableView(frame: view.bounds, style: .grouped)
        tableView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cellId")
        return tableView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Покупки на сегодня"
        setupViews()
        setupConstraints()
        setupAddExpenseButton()
        
    }
    
    
    private func setupViews() {
        view.addSubview(tableView)
    }
    
    private func setupConstraints() {
        tableView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
    }
    private func setupAddExpenseButton() {
            let addButton = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(addExpense))
            navigationItem.rightBarButtonItem = addButton
        }
    
    @objc private func addExpense() {
            let alertController = UIAlertController(title: "Добавить покупку", message: nil, preferredStyle: .alert)

            alertController.addTextField { textField in
                textField.placeholder = "Название"
            }

            alertController.addTextField { textField in
                textField.placeholder = "Сумма"
                textField.keyboardType = .decimalPad
            }

            let addAction = UIAlertAction(title: "Добавить", style: .default) { [weak self, weak alertController] _ in
                guard let fields = alertController?.textFields, let description = fields[0].text, let amountString = fields[1].text, let amount = Int(amountString) else {
                    return
                }
                self?.viewModel.addPurchase(description: description, amount: amount)
                self?.tableView.reloadData()
            }

            alertController.addAction(addAction)
            alertController.addAction(UIAlertAction(title: "Назад", style: .cancel, handler: nil))

            present(alertController, animated: true)
        }
    }

extension PurchaseViewController: UITableViewDelegate, UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.purchase.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellId", for: indexPath)
        let purchase = viewModel.purchase[indexPath.row]
        cell.textLabel?.text = "\(purchase.description) - \(purchase.amount) kzt"
        return cell
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0 {
            return "Все покупки "
        } else {
            return nil
        }
}
