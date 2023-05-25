//
//  MenuCell.swift
//  Gmail
//
//  Created by Narek on 25.05.23.
//

import UIKit

class MenuCell: UITableViewCell {

    static let id: String = .init(describing: MenuCell.self)

    @IBOutlet var iconImageView: UIImageView!
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet weak var separatorView: UIView!

    override func awakeFromNib() {
        super.awakeFromNib()

        setSubViews()
    }

    private func setSubViews() {
        let iconImage = UIImage(systemName: "person.crop.circle")
        iconImageView.image = iconImage
        titleLabel.text = "All Inboxes"
        titleLabel.font = UIFont.systemFont(ofSize: 14, weight: .bold)
        titleLabel.textColor = Color.Message.name
        separatorView.backgroundColor = Color.gray
    }

    func updateUI(with item: Item) {
        let image = item.image.withRenderingMode(.alwaysTemplate)
        iconImageView.image = image
        iconImageView.tintColor = Color.gray
        titleLabel.text = item.title
    }
}
