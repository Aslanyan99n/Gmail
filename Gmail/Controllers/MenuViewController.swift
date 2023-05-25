//
//  MenuViewController.swift
//  Gmail
//
//  Created by Narek on 25.05.23.
//

import UIKit

class MenuViewController: UITableViewController {
    var menuItems: [Item] = ItemManger.shared.getItems()

    lazy var imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        let image = UIImage(named: "ic_gmail")
        imageView.heightAnchor.constraint(equalToConstant: 30).isActive = true
        imageView.widthAnchor.constraint(equalToConstant: 30).isActive = true
        imageView.image = image
        return imageView
    }()

    lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Gmail"
        label.textColor = Color.Message.name
        label.font = UIFont.systemFont(ofSize: 18)
        return label
    }()

    lazy var stackView: UIStackView = {
        let stack = UIStackView(arrangedSubviews: [imageView, titleLabel])
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .horizontal
        return stack
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        let nib = UINib(nibName: MenuCell.id, bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: MenuCell.id)
        tableView.separatorStyle = .none

        navigationController?.navigationBar.prefersLargeTitles = true
        navigationItem.largeTitleDisplayMode = .always
        navigationController?.navigationBar.topItem?.titleView = stackView
//        navigationItem.titleView = stackView
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        menuItems.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: MenuCell.id, for: indexPath) as? MenuCell
        else { fatalError("Unexpected cell type") }

        let index = indexPath.row
        let needsSeperator: Bool = (index == 0 || index == 3 || index == 12 || index == 13) ? true : false

        let view = UIView()
        view.backgroundColor = Color.Icon.selectedColor
        cell.selectedBackgroundView = view
        cell.separatorView.isHidden = !needsSeperator
        let item = menuItems[indexPath.row]
        cell.updateUI(with: item)
        return cell
    }
}
