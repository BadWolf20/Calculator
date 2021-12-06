//
//  ViewController.swift
//  Сalculator
//
//  Created by Roman on 06.12.2021.
//

import UIKit

class ViewController: UIViewController {

    // MARK: - Components



    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()

        setupHierarchy()
        setupLayout()
        setupView()
    }

    // MARK: - Settings
    private func setupHierarchy() {

    }

    private func setupLayout() {


    }

    private func setupView() {
        view.backgroundColor = .black

    }
}

// MARK: - Constants

extension ViewController{
    enum Colors {
        static let timeLableFontColor: UIColor = .white

    }

    enum Metric {
        static let timeLabelFontSize: CGFloat = 80


    }

    enum Strings {

    }
}
