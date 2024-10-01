//
//  RecommendationViewController.swift
//  MVVM
//
//  Created by Ertannic Saralay on 02.04.2024.
//
import UIKit
import SnapKit

class RecommendationViewController: UIViewController {
    
    let viewModel = LabelsViewModel()
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Рекомендации"
        setupView()
        setupLabels()
    }
    
    // MARK: - Setups
    func setupView() {
        view.backgroundColor = .systemBackground
    }
    func setupLabels() {
        let containerView = UIView()
        view.addSubview(containerView)
        containerView.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.centerY.equalToSuperview()
            make.leading.trailing.equalToSuperview()
        }
        
        var previousLabel: UILabel?
        for labelModel in viewModel.labels { 
            let label = UILabel()
            label.text = labelModel.text
            label.font = UIFont.boldSystemFont(ofSize: 24)
            label.numberOfLines = 0
            containerView.addSubview(label)
            label.snp.makeConstraints { make in
                make.leading.equalTo(containerView.snp.leading).offset(15)
                make.trailing.equalTo(containerView.snp.trailing).offset(-15)
                if let previous = previousLabel {
                    make.top.equalTo(previous.snp.bottom).offset(20)
                } else {
                    make.top.equalToSuperview()
                }
            }
            previousLabel = label
        }
        
        previousLabel?.snp.makeConstraints { make in
            make.bottom.lessThanOrEqualToSuperview()
        }
    }
}


