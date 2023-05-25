//
//  MessageDetailViewController.swift
//  Gmail
//
//  Created by Narek on 25.05.23.
//

import UIKit

class MessageDetailViewController: UIViewController {
    lazy var archiveButton: UIBarButtonItem = {
        let image = UIImage(systemName: "archivebox")
        let button = UIBarButtonItem(image: image, style: .plain, target: self, action: #selector(archiveAction))
        button.tintColor = Color.gray
        return button
    }()

    lazy var deleteButton: UIBarButtonItem = {
        let image = UIImage(systemName: "trash")
        let button = UIBarButtonItem(image: image, style: .plain, target: self, action: #selector(deleteAction))
        button.tintColor = Color.gray
        return button
    }()

    lazy var goToMessageButton: UIBarButtonItem = {
        let image = UIImage(systemName: "envelope")
        let button = UIBarButtonItem(image: image, style: .plain, target: self, action: #selector(goToMessageAction))
        button.tintColor = Color.gray
        return button
    }()

    lazy var moreButton: UIBarButtonItem = {
        let image = UIImage(systemName: "ellipsis")
        let button = UIBarButtonItem(image: image, style: .plain, target: self, action: #selector(moreAction))
        button.tintColor = Color.gray
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.rightBarButtonItems = [archiveButton, deleteButton, goToMessageButton, moreButton]
    }

    @objc func archiveAction() {
        // Action
    }

    @objc func deleteAction() {
        // Action
    }

    @objc func goToMessageAction() {
        // Action
    }

    @objc func moreAction() {
        // Action
    }
}
