//
//  ViewController.swift
//  Сalculator
//
//  Created by Roman on 06.12.2021.
//

import UIKit

class ViewController: UIViewController {

    // MARK: - Components
    private lazy var resultLabel: UILabel = {
        var label = UILabel()
        label.text = "0"
        label.textColor = .white
        label.font = .systemFont(ofSize: Metric.resultLabelFontSize, weight: .light)
        label.textAlignment = .right

        return label
    }()

    private lazy var parentStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.spacing = Metric.parentStackViewSpacing

        return stackView
    }()

    private lazy var buttonsStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.spacing = Metric.buttonsStackViewSpacing
        stackView.distribution = .fillEqually

        return stackView
    }()

    private lazy var clearButton = createButton(with: "AC", titleColor: .black, backGroundColor: .lightGray)
    private lazy var plusMinusButton = createButton(with: "+/-", titleColor: .black, backGroundColor: .lightGray)
    private lazy var percentButton = createButton(with: "%", titleColor: .black, backGroundColor: .lightGray)
    private lazy var devideButton = createButton(with: "÷", titleColor: .white, backGroundColor: .orange)
    private lazy var firstStackView = createHorizontalStackView()

    private lazy var sevenButton = createButton(with: "7", titleColor: .white, backGroundColor: .darkGray)
    private lazy var eightButton = createButton(with: "8", titleColor: .white, backGroundColor: .darkGray)
    private lazy var nineButton = createButton(with: "9", titleColor: .white, backGroundColor: .darkGray)
    private lazy var multiplyButton = createButton(with: "•", titleColor: .white, backGroundColor: .orange)
    private lazy var secondStackView = createHorizontalStackView()

    private lazy var foreButton = createButton(with: "4", titleColor: .white, backGroundColor: .darkGray)
    private lazy var fiveButton = createButton(with: "5", titleColor: .white, backGroundColor: .darkGray)
    private lazy var sixButton = createButton(with: "6", titleColor: .white, backGroundColor: .darkGray)
    private lazy var minusButton = createButton(with: "-", titleColor: .white, backGroundColor: .orange)
    private lazy var thirdStackView = createHorizontalStackView()

    private lazy var oneButton = createButton(with: "1", titleColor: .white, backGroundColor: .darkGray)
    private lazy var twoButton = createButton(with: "2", titleColor: .white, backGroundColor: .darkGray)
    private lazy var threeButton = createButton(with: "3", titleColor: .white, backGroundColor: .darkGray)
    private lazy var plusButton = createButton(with: "+", titleColor: .white, backGroundColor: .orange)
    private lazy var thothStackView = createHorizontalStackView()


    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()

        setupHierarchy()
        setupLayout()
        setupView()
    }

    // MARK: - Settings
    private func setupHierarchy() {
        view.addSubview(parentStackView)

        parentStackView.addArrangedSubview(resultLabel)
        parentStackView.addArrangedSubview(buttonsStackView)

        firstStackView.addArrangedSubview(clearButton)
        firstStackView.addArrangedSubview(plusMinusButton)
        firstStackView.addArrangedSubview(percentButton)
        firstStackView.addArrangedSubview(devideButton)
        buttonsStackView.addArrangedSubview(firstStackView)

        secondStackView.addArrangedSubview(sevenButton)
        secondStackView.addArrangedSubview(nineButton)
        secondStackView.addArrangedSubview(eightButton)
        secondStackView.addArrangedSubview(multiplyButton)
        buttonsStackView.addArrangedSubview(secondStackView)

        thirdStackView.addArrangedSubview(foreButton)
        thirdStackView.addArrangedSubview(fiveButton)
        thirdStackView.addArrangedSubview(sixButton)
        thirdStackView.addArrangedSubview(minusButton)
        buttonsStackView.addArrangedSubview(thirdStackView)

        thothStackView.addArrangedSubview(oneButton)
        thothStackView.addArrangedSubview(twoButton)
        thothStackView.addArrangedSubview(threeButton)
        thothStackView.addArrangedSubview(plusButton)
        buttonsStackView.addArrangedSubview(thothStackView)

    }

    private func setupLayout() {
        parentStackView.translatesAutoresizingMaskIntoConstraints = false
        parentStackView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: Metric.leftOffset).isActive = true
        parentStackView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: Metric.rightOffset).isActive = true
        parentStackView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: Metric.bottomOffset).isActive = true

        firstStackView.heightAnchor.constraint(equalToConstant: Metric.buttonsHeight).isActive = true

    }

    private func setupView() {
        view.backgroundColor = .black

    }

    private func createButton(with title: String, titleColor: UIColor, backGroundColor: UIColor) -> UIButton{
        let button = UIButton(type: .system)

        button.setTitle(title, for: .normal)
        button.setTitleColor(titleColor, for: .normal)
        button.backgroundColor = backGroundColor
        button.titleLabel?.font = .systemFont(ofSize: Metric.buttonsFontSize, weight: .medium)

        button.layer.masksToBounds = true
        button.layer.cornerRadius = Metric.buttonsHeight / 2

        button.widthAnchor.constraint(equalTo: button.heightAnchor, multiplier: 1).isActive = true

        return button
    }

    private func createHorizontalStackView() -> UIStackView{
        let stackView = UIStackView()

        stackView.axis = .horizontal
        stackView.distribution = .equalSpacing

        return stackView
    }
}

// MARK: - Constants

extension ViewController{
    enum Colors {
        static let timeLableFontColor: UIColor = .white

    }

    enum Metric {
        static let parentStackViewSpacing: CGFloat = 15
        static let buttonsStackViewSpacing: CGFloat = 15

        static let buttonsHeight: CGFloat = 70
        static let buttonsFontSize: CGFloat = 30

        static let resultLabelFontSize: CGFloat = 75

        static let leftOffset: CGFloat = 20
        static let rightOffset: CGFloat = -20
        static let bottomOffset: CGFloat = -60

    }

    enum Strings {

    }
}
