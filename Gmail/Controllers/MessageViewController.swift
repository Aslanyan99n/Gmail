//
//  MessageViewController.swift
//  Gmail
//
//  Created by Narek on 24.05.23.
//

import UIKit

class MessageViewController: UIViewController, UITextFieldDelegate {
    var messages = MessageManager.shared.getMessages()
    var items = ItemManger.shared.getItems()
    var searchFieldBar = SearchFieldBar(frame: .zero)

    lazy var tableView: UITableView = {
        let tableView = UITableView(frame: .zero, style: .grouped)
        tableView.backgroundColor = Color.white
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.delegate = self
        tableView.dataSource = self
        return tableView
    }()

    lazy var newMessageButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.heightAnchor.constraint(equalToConstant: 40).isActive = true
        button.widthAnchor.constraint(equalToConstant: 40).isActive = true
        button.backgroundColor = Color.tabBarLightColor
        button.layer.cornerRadius = 20
        let image = UIImage(systemName: "pencil")?.withRenderingMode(.alwaysTemplate)
        button.setImage(image, for: .normal)
        button.tintColor = .black
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        view.addSubview(tableView)
        tableView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        let nib = UINib(nibName: MessageCell.id, bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: MessageCell.id)
        tableView.separatorStyle = .none
        let searchController = UISearchController(searchResultsController: nil)
        searchController.searchResultsUpdater = self
        searchController.searchBar.placeholder = "Search"
        navigationItem.searchController = searchController
        navigationItem.hidesSearchBarWhenScrolling = false
        navigationController?.hidesBarsOnSwipe = true

        view.addSubview(newMessageButton)
        newMessageButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -24).isActive = true
        newMessageButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -120).isActive = true
    }
}

extension MessageViewController: UISearchResultsUpdating {
    func updateSearchResults(for searchController: UISearchController) {}
}

// MARK: - UITableViewDataSource

extension MessageViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        messages.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: MessageCell.id, for: indexPath) as? MessageCell else { fatalError("Unexpected cell type") }
        let backgroundView = UIView()
        backgroundView.backgroundColor = UIColor.white
        cell.selectedBackgroundView = backgroundView
        let message = messages[indexPath.row]
        cell.updateUI(with: message)
        return cell
    }
}

// MARK: - UITableViewDelegate

extension MessageViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // go to MessageDetailViewController

        let vc = MessageDetailViewController()
        navigationController?.pushViewController(vc, animated: true)
//        present(vc, animated: true)
    }

    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return items[section].title
    }
}
