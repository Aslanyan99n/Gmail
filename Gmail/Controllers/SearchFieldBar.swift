//
//  SearchFiledBar.swift
//  Gmail
//
//  Created by Narek on 24.05.23.
//

import UIKit

class SearchFieldBar: UITextField {
    var textInsets = UIEdgeInsets(top: 0, left: 40, bottom: 0, right: 0)

    override func awakeFromNib() {
        super.awakeFromNib()

        backgroundColor = .clear
        textColor = .white
        returnKeyType = .search
        borderStyle = .none
        clipsToBounds = true

        let image = UIImage(systemName: "line.3.horizontal")
        let imageView = UIImageView(image: image)
        imageView.tintColor = .white
        addSubview(imageView)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 12).isActive = true
        imageView.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
    }

    override func textRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: textInsets)
    }

    override func placeholderRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: textInsets)
    }

    override func editingRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: textInsets)
    }
}
