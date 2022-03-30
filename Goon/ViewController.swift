//
//  ViewController.swift
//  Goon
//
//  Created by nono chan  on 2022/3/28.
//

import UIKit

class ViewController: UIViewController {
    // MARK: - Properties

    var nextButton = UIButton()

    // MARK: - Methods

    override func viewDidLoad() {
        super.viewDidLoad()
        setNextButton()
        activateConstraintsNextButton()
    }

    func setNextButton() {
        nextButton.backgroundColor = .black
        nextButton.setTitle("下一頁", for: .normal)
        nextButton.addTarget(self, action: #selector(ViewController.second), for: .touchUpInside)
        self.view.addSubview(nextButton)
    }

    @objc func second() {
        self.navigationController?.pushViewController(
            SecondViewController(), animated: true)
    }

    // MARK: - Layouts
    func activateConstraintsNextButton() {
        nextButton.translatesAutoresizingMaskIntoConstraints = false
        let centerX = nextButton.centerXAnchor
            .constraint(equalTo: view.centerXAnchor)
        let centerY = nextButton.centerYAnchor
            .constraint(equalTo: view.centerYAnchor)
        let width = nextButton.widthAnchor
            .constraint(equalToConstant: 100)
        let height = nextButton.heightAnchor
            .constraint(equalToConstant: 30)

        NSLayoutConstraint.activate([
            centerX, centerY, width, height
        ])
    }
    
}

