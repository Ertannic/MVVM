//
//  RecommendationViewController.swift
//  MVVM
//
//  Created by Ertannic Saralay on 02.04.2024.
//

import UIKit

class RecommendationViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        configureNavigationBar()
        setupLabels()
    }
    
    private func configureNavigationBar() {
            let appearance = UINavigationBarAppearance()
            appearance.backgroundColor = UIColor.systemBackground
            navigationController?.navigationBar.prefersLargeTitles = true
            navigationController?.navigationBar.isHidden = false
            title = "Рекомендации"
        }

    var viewModel = RecommendationViewModel()

    // MARK: - UI creation
    private func createLabel(with text: String) -> UILabel {
        let label = UILabel()
        label.text = text
        label.textAlignment = .center
        label.textColor = .white
        return label
    }

    // MARK: - Setup
    private func setupLabels() {
        let firstLabel = createLabel(with: viewModel.loadData.firstLabel)
        let secondLabel = createLabel(with: viewModel.loadData.secondLabel)
        let thirdLabel = createLabel(with: viewModel.loadData.thirdLabel)
        let fourthLabel = createLabel(with: viewModel.loadData.fourthLabel)
        let fifthLabel = createLabel(with: viewModel.loadData.fifthLabel)

        let stackView = UIStackView(arrangedSubviews: [firstLabel, secondLabel, thirdLabel, fourthLabel, fifthLabel])
        stackView.axis = .vertical
        stackView.distribution = .equalSpacing
        stackView.alignment = .fill
        stackView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(stackView)

        NSLayoutConstraint.activate([
                    stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                    stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
                    stackView.leadingAnchor.constraint(greaterThanOrEqualTo: view.leadingAnchor, constant: 20),
                    stackView.trailingAnchor.constraint(lessThanOrEqualTo: view.trailingAnchor, constant: -20)
                ])
    }
    //MARK: SetupHierarchy
    private func setupLayout() {
        //snapkit layout
    }

}
