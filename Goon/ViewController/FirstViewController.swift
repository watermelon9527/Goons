//
//  ViewController.swift
//  Goon
//
//  Created by nono chan  on 2022/3/28.
//

import UIKit

class FirstViewController: UIViewController {
    // MARK: - Properties

    let firstView = FirstView()

    // MARK: - LifeCycle

    override func viewDidLoad() {
        super.viewDidLoad()
        self.firstView.buttonAction = buttonAction
    }

    override func loadView() {
        self.view = firstView
    }

    // MARK: - Methods

    @objc func buttonAction() {
        self.navigationController?.pushViewController(
            SecondViewController(), animated: true)
    }

}

