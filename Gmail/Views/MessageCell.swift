//
//  MessageCell.swift
//  Gmail
//
//  Created by Narek on 25.05.23.
//

import UIKit

class MessageCell: UITableViewCell {
    static let id: String = .init(describing: MessageCell.self)

    @IBOutlet var iconImageView: UIImageView!
    @IBOutlet var fileView: UIView!
    @IBOutlet var fileNameLabel: UILabel!
    @IBOutlet var fileImageView: UIImageView!
    @IBOutlet var starButton: UIButton!
    @IBOutlet var descriptionLabel: UILabel!
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var dateLabel: UILabel!
    @IBOutlet var nameLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()

        setSubViews()
    }

    private func setSubViews() {
        let iconImage = UIImage(systemName: "person.crop.circle")
        iconImageView.image = iconImage
        fileView.layer.cornerRadius = fileView.frame.height/2
        fileView.layer.borderWidth = 1
        fileView.layer.borderColor = Color.gray.cgColor
        fileNameLabel.text = "Google Docs"
        let fileImage = UIImage(systemName: "text.justify.left")?.withRenderingMode(.alwaysTemplate)
        fileImageView.image = fileImage
        fileImageView.tintColor = Color.white
        fileImageView.backgroundColor = Color.blue
        let starImage = UIImage(systemName: "star")?.withRenderingMode(.alwaysTemplate)
        let selectedStarImage = UIImage(systemName: "star.fill")?.withRenderingMode(.alwaysTemplate)
        starButton.setImage(starImage, for: .normal)
        starButton.setImage(selectedStarImage, for: .selected)
        starButton.tintColor = Color.gray // starButton.isSelected ? Color.textColor : Color.yellow
        nameLabel.text = "Udemy"
        nameLabel.font = UIFont.systemFont(ofSize: 16, weight: .bold)
        nameLabel.textColor = Color.Message.name
        dateLabel.text = "25 May"
        dateLabel.font = UIFont.systemFont(ofSize: 12, weight: .bold)
        dateLabel.textColor = Color.Message.name
        titleLabel.text = "Title Message"
        titleLabel.font = UIFont.systemFont(ofSize: 14, weight: .bold)
        descriptionLabel.text = "Description text"
        descriptionLabel.textColor = Color.Message.description
    }

    func updateUI(with message: Message) {
        iconImageView.image = message.image
        nameLabel.text = message.name
        dateLabel.text = message.date
        titleLabel.text = message.title
        descriptionLabel.text = message.description
        fileNameLabel.text = message.fileName
        fileImageView.image = UIImage(systemName: "text.justify.left")
//        starButton.tintColor = starButton.isSelected ? Color.textColor : Color.yellow
    }
}
