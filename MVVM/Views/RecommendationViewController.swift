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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Рекомендации"
        setupLabels()
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
               for labelModel in viewModel.labels { // Используем данные из viewModel
                   let label = UILabel()
                   label.text = labelModel.text
                   label.font = UIFont.boldSystemFont(ofSize: 24) // толстый текст
                   label.numberOfLines = 0 // Разрешить перенос текста на новую строку
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


