//
//  InfoDisplayView.swift
//  MVVM
//
//  Created by Ertannic Saralay on 07.04.2024.
//

import Foundation
import UIKit

class InfoDisplayView: UIView {
    
    // MARK: - UI
    private let titleLable = UILabel()
    private let valueLabel = UILabel()
    
    // MARK: - init
    init(title: String) {
        super.init(frame: .zero)
        setupView(title: title)
    }
    
    required init?(coder: NSCoder) {
        fatalError("No storyboard allowed here")
    }
    
    // MARK: - Setups
    private func setupView(title: String) {
        titleLable.text = title
        titleLable.font = .boldSystemFont(ofSize: 16)
        
        valueLabel.font = .boldSystemFont(ofSize: 16)
        
        addSubview(titleLable)
        addSubview(valueLabel)
        backgroundColor = .systemGray2
        layer.cornerRadius = 10
        clipsToBounds = true
        
        titleLable.snp.makeConstraints { make in
            make.leading.equalToSuperview().offset(20)
            make.centerY.equalToSuperview()
        }
        
        valueLabel.snp.makeConstraints { make in
            make.trailing.equalToSuperview().offset(-10)
            make.centerY.equalToSuperview()
        }
    }
    
    func setValue(_ value: String) {
        valueLabel.text = value
    }
}
