//
//  FirstView.swift
//  Goonss
//
//  Created by nono chan  on 2022/4/6.
//

import UIKit

class FirstView: UIView {

    // MARK: - Properties

    var buttonAction: (() -> Void)?

    lazy var nextButton: UIButton = {
        let nextButton = UIButton()
        nextButton.backgroundColor = .black
        nextButton.setTitle("下一頁", for: .normal)
        nextButton.addTarget(self, action: #selector(buttonDidTap), for: .touchUpInside)
        return nextButton
    }()

    // MARK: - Methods

    override init(frame: CGRect) {
        super.init(frame: frame)
        setViews()
        activateConstraintsNextButton()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func setViews() {
        self.addSubview(nextButton)
    }
    @objc func buttonDidTap() {
        buttonAction?()
    }
    // MARK: - Layouts

    func activateConstraintsNextButton() {
        nextButton.translatesAutoresizingMaskIntoConstraints = false
        let centerX = nextButton.centerXAnchor
            .constraint(equalTo: self.centerXAnchor)
        let centerY = nextButton.centerYAnchor
            .constraint(equalTo: self.centerYAnchor)
        let width = nextButton.widthAnchor
            .constraint(equalToConstant: 100)
        let height = nextButton.heightAnchor
            .constraint(equalToConstant: 30)

        NSLayoutConstraint.activate([
            centerX, centerY, width, height
        ])
    }
}
