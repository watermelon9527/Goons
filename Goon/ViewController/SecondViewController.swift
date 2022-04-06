//
//  SecondViewController.swift
//  Goon
//
//  Created by nono chan  on 2022/3/28.
//

import UIKit

class SecondViewController: UIViewController {
    // MARK: - Properties
    var fullSize: CGSize!
    var scrollView = UIScrollView()
    var imageView = UIImageView()
    var label1 = UILabel()
    var label2 = UILabel()
    var redView = UIView()
    //let secondView = SecondView()
    // MARK: - LifeCycle

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        fullSize = UIScreen.main.bounds.size
        setProperties()
        activateConstraints()

     //   self.secondView.buttonAction = back
    }
//
//    override func loadView() {
//        self.view = secondView
//    }

    // MARK: - Methods

    func setNav() {
        self.title = "果思設計"
        let leftButton = UIBarButtonItem(
            image: UIImage(named:"iback"),
            style:.plain ,
            target:self ,
            action: #selector(back))
        navigationItem.leftBarButtonItem = leftButton
        leftButton.tintColor = .black
    }

    func setScrollView() {
        scrollView.frame = view.bounds
        scrollView.contentSize = CGSize(width: fullSize.width, height: 1150)

        scrollView.showsVerticalScrollIndicator = true
        scrollView.isScrollEnabled = true
        view.addSubview(scrollView)
    }

    func setImageView() {
        imageView.image = UIImage(named: "dog")
        scrollView.addSubview(imageView)
    }

    func setLabel1() {
        label1.text = "果思設計"
        label1.font = UIFont.systemFont(ofSize: 20, weight: .medium)
        label1.textColor = .white
        imageView.addSubview(label1)
    }

    func setLabel2() {
        label2.text = "iOS APP"
        label2.font = UIFont.systemFont(ofSize: 20, weight: .regular)
        label2.textColor = .white
        imageView.addSubview(label2)
    }

    func setRedView() {
        redView.backgroundColor = .red
        redView.layer.cornerRadius = 24
        redView.layer.maskedCorners = [.layerMaxXMinYCorner]
        scrollView.addSubview(redView)
    }

    func setProperties() {
        setNav()
        setScrollView()
        setImageView()
        setLabel1()
        setLabel2()
        setRedView()
    }

    func activateConstraints() {
        activateConstraintsScrollView()
        activateConstraintsImageView()
        activateConstraintsLabel1()
        activateConstraintsLabel2()
        activateConstraintsRedView()
    }

    @objc func back() {
        self.navigationController?.popViewController(animated: false)
    }

    // MARK: - Layouts
    func activateConstraintsScrollView() {
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        let top = scrollView.topAnchor
            .constraint(equalTo: view.topAnchor)
        let leading = scrollView.leadingAnchor
            .constraint(equalTo: view.leadingAnchor)
        let trailing = scrollView.trailingAnchor
            .constraint(equalTo: view.trailingAnchor)
        let width = scrollView.widthAnchor
            .constraint(equalTo: view.widthAnchor)
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
            .constraint(equalTo: view.widthAnchor)

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
            .constraint(equalTo: view.widthAnchor)

        NSLayoutConstraint.activate([
            top, width, height
        ])
    }

}

