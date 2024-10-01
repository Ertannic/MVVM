//
//  MainViewController.swift
//  MVVM
//
//  Created by Ertannic Saralay on 02.04.2024.
//

import UIKit
import SnapKit

class MainViewController: UIViewController {
    
    var viewModel = PurchaseViewModel()
    
    // MARK: - UI
    private let totalBalanceView = InfoDisplayView(title: "Баланс")
    private let totalExpensesView = InfoDisplayView(title: "Затраты на сегодня")
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
        updateDisplay()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        updateDisplay()
    }
    
    // MARK: - Setups
    private func setupViews() {
        view.backgroundColor = .systemBackground
        view.addSubview(totalBalanceView)
        view.addSubview(totalExpensesView)
        
        totalBalanceView.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.centerY.equalToSuperview().offset(-30)
            make.width.equalToSuperview().multipliedBy(0.8)
            make.height.equalTo(50)
        }
        
        totalExpensesView.snp.makeConstraints { make in
            make.top.equalTo(totalBalanceView.snp.bottom).offset(20)
            make.centerX.equalTo(totalBalanceView.snp.centerX)
            make.width.equalTo(totalBalanceView.snp.width)
            make.height.equalTo(50)
        }
    }
    
    private func updateDisplay() {
        totalBalanceView.setValue("\(viewModel.totalBalance) kzt")
        totalExpensesView.setValue("\(viewModel.totalExpenses) kzt")
    }
}
