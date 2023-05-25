//
//  MeetViewController.swift
//  Gmail
//
//  Created by Narek on 24.05.23.
//

import UIKit

class MeetViewController: UIViewController {

    lazy var newMeetingButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.heightAnchor.constraint(equalToConstant: 40).isActive = true
        button.layer.cornerRadius = 8
        button.setTitle("New meeteng", for: .normal)
        button.setTitleColor(Color.gray, for: .normal)
        button.backgroundColor = Color.blue
        button.addTarget(self, action: #selector(newMeetingButtonAction), for: .touchUpInside)
        return button
    }()

    lazy var joinButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.heightAnchor.constraint(equalToConstant: 30).isActive = true
        button.layer.cornerRadius = 6
        button.layer.borderColor = Color.gray.cgColor
        button.layer.borderWidth = 1
        button.setTitle("Join with a code", for: .normal)
        button.setTitleColor(Color.gray, for: .normal)
        button.backgroundColor = Color.white
        button.addTarget(self, action: #selector(joinButtonAction), for: .touchUpInside)
        return button
    }()

    lazy var stackView: UIStackView = {
        let stack = UIStackView(arrangedSubviews: [newMeetingButton, joinButton])
        stack.layoutMargins = .init(top: 4, left: 4, bottom: 4, right: 4)
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .horizontal
        stack.distribution = .fillEqually
        stack.spacing = 10
        return stack
    }()

    lazy var leftButton: UIBarButtonItem = {
        let image = UIImage(systemName: "line.3.horizontal")?.withRenderingMode(.alwaysTemplate)
        let button = UIBarButtonItem(image: image, style: .plain, target: self, action: #selector(leftButtonAction))
        button.tintColor = Color.gray
        return button
    }()

    lazy var rightButton: UIBarButtonItem = {
        let image = UIImage(systemName: "person.circle.fill")?.withRenderingMode(.alwaysTemplate)
        let button = UIBarButtonItem(image: image, style: .plain, target: self, action: #selector(rightButtonAction))
        button.tintColor = Color.gray
        button.largeContentSizeImage = image
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = Color.white

        navigationItem.title = "Meet"
        navigationItem.leftBarButtonItem = leftButton
        navigationItem.rightBarButtonItem = rightButton

        view.addSubview(stackView)
        let margins = view.layoutMarginsGuide
        stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 12).isActive = true
        stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -12).isActive = true
        stackView.topAnchor.constraint(equalTo: margins.topAnchor).isActive = true
    }

    @objc func leftButtonAction() {
        let menuVC = MenuViewController()
        show(menuVC, sender: self)
    }

    @objc func rightButtonAction() {
        // popupView
    }

    @objc func newMeetingButtonAction() {
        // Action
    }

    @objc func joinButtonAction() {
        // Action
    }
}
