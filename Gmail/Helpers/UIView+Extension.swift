//
//  UIView+Extension.swift
//  Gmail
//
//  Created by Narek on 25.05.23.
//

import UIKit

extension UIView {
    func edgesToSuperView(horizontalInset: CGFloat = 0, verticalInset: CGFloat = 0) {
        if let superview {
            topAnchor.constraint(equalTo: superview.topAnchor, constant: verticalInset).isActive = true
            bottomAnchor.constraint(equalTo: superview.bottomAnchor, constant: verticalInset).isActive = true
            leadingAnchor.constraint(equalTo: superview.leadingAnchor, constant: horizontalInset).isActive = true
            trailingAnchor.constraint(equalTo: superview.trailingAnchor, constant: horizontalInset).isActive = true
        }
    }
}
