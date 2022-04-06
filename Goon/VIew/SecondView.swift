//
//  SecondView.swift
//  Goonss
//
//  Created by nono chan  on 2022/4/6.
//

import UIKit
class SecondView: UIView {

    // MARK: - Properties

    var fullSize :CGSize!
    
    var buttonAction: (() -> Void)?

    let scrollView: UIScrollView = {
        let scrollView = UIScrollView()
        scrollView.showsVerticalScrollIndicator = true
        scrollView.isScrollEnabled = true
        return scrollView
    }()

    let imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "dog")
        return imageView
    }()

    let label1: UILabel = {
        let label1 = UILabel()
        label1.text = "果思設計"
        label1.font = UIFont.systemFont(ofSize: 20, weight: .medium)
        label1.textColor = .white
        return label1
    }()

    let label2: UILabel = {
        let label2 = UILabel()
        label2.text = "iOS APP"
        label2.font = UIFont.systemFont(ofSize: 20, weight: .regular)
        label2.textColor = .white
        return label2
    }()

    let redView: UIView = {
        let redView = UIView()
        redView.backgroundColor = .red
        redView.layer.cornerRadius = 24
        redView.layer.maskedCorners = [.layerMaxXMinYCorner]
        return redView
    }()
    let secondViewController = SecondViewController()
    // MARK: - Methods
    func setNav() {
        secondViewController.title = "果思設計"
        let leftButton = UIBarButtonItem(
            image: UIImage(named:"iback"),
            style:.plain ,
            target:self ,
            action: #selector(buttonDidTap))
        secondViewController.navigationItem.leftBarButtonItem = leftButton
        leftButton.tintColor = .black
    }
    override init(frame: CGRect) {
        super.init(frame: frame)
        activateConstraints()
        setViews()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func setViews() {
        self.backgroundColor = .white
        fullSize = UIScreen.main.bounds.size
        scrollView.contentSize = CGSize(width: fullSize.width, height: 1150)
        scrollView.frame = self.bounds
        self.addSubview(scrollView)
        scrollView.addSubview(imageView)
        imageView.addSubview(label1)
        imageView.addSubview(label2)
        scrollView.addSubview(redView)
    }

    func activateConstraints() {
        activateConstraintsScrollView()
        activateConstraintsImageView()
        activateConstraintsLabel1()
        activateConstraintsLabel2()
        activateConstraintsRedView()
    }

    @objc func buttonDidTap() {
        buttonAction?()
    }
    
    // MARK: - Layouts
    func activateConstraintsScrollView() {
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        let top = scrollView.topAnchor
            .constraint(equalTo: self.topAnchor)
        let leading = scrollView.leadingAnchor
            .constraint(equalTo: self.leadingAnchor)
        let trailing = scrollView.trailingAnchor
            .constraint(equalTo: self.trailingAnchor)
        let width = scrollView.widthAnchor
            .constraint(equalTo: self.widthAnchor)
        let height = scrollView.heightAnchor
            .constraint(equalToConstant: 1150)

        NSLayoutConstraint.activate([
            top, leading, trailing, height, width
        ])
    }
    func activateConstraintsImageView() {
        imageView.translatesAutoresizingMaskIntoConstraints = false

        let top = imageView.topAnchor
            .constraint(equalTo: scrollView.topAnchor,constant: -100)
        let height = imageView.heightAnchor
            .constraint(equalToConstant: 300)
        let width = imageView.widthAnchor
            .constraint(equalTo: self.widthAnchor)

        NSLayoutConstraint.activate([
            height, width, top
        ])
    }

    func activateConstraintsLabel1() {
        label1.translatesAutoresizingMaskIntoConstraints = false
        let top = label1.topAnchor
            .constraint(equalTo: imageView.topAnchor, constant: 100)
        let leading = label1.leadingAnchor
            .constraint(equalTo: imageView.leadingAnchor, constant: 20)

        NSLayoutConstraint.activate([
            top, leading
        ])
    }

    func activateConstraintsLabel2() {
        label2.translatesAutoresizingMaskIntoConstraints = false
        let top = label2.topAnchor
            .constraint(equalTo: label1.bottomAnchor, constant: 5)
        let leading = label2.leadingAnchor
            .constraint(equalTo: label1.leadingAnchor)

        NSLayoutConstraint.activate([
            top, leading
        ])
    }

    func activateConstraintsRedView() {
        redView.translatesAutoresizingMaskIntoConstraints = false
        let top = redView.topAnchor
            .constraint(equalTo: imageView.bottomAnchor,constant: -50)
        let height = redView.heightAnchor
            .constraint(equalToConstant: 900)
        let width = redView.widthAnchor
            .constraint(equalTo: self.widthAnchor)

        NSLayoutConstraint.activate([
            top, width, height
        ])
    }

}
