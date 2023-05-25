//
//  ItemManager.swift
//  Gmail
//
//  Created by Narek on 25.05.23.
//

import UIKit

class ItemManger {
    static let shared = ItemManger()
    private init() {}

    var items: [Item] = [
        Item(image: UIImage(systemName: "tray.2") ?? UIImage(), title: "All Inboxes"),
        Item(image: UIImage(systemName: "tray.fill") ?? UIImage(), title: "Primary"),
        Item(image: UIImage(systemName: "person.2") ?? UIImage(), title: "Social"),
        Item(image: UIImage(systemName: "exclamationmark") ?? UIImage(), title: "Promotions"),
        Item(image: UIImage(systemName: "star") ?? UIImage(), title: "Starred"),
        Item(image: UIImage(systemName: "clock") ?? UIImage(), title: "Snoozed"),
        Item(image: UIImage(systemName: "bookmark") ?? UIImage(), title: "Important"),
        Item(image: UIImage(systemName: "paperplane") ?? UIImage(), title: "Sent"),
        Item(image: UIImage(systemName: "arrowshape.turn.up.backward.badge.clock") ?? UIImage(), title: "Scheduled"),
        Item(image: UIImage(systemName: "doc") ?? UIImage(), title: "Drafts"),
        Item(image: UIImage(systemName: "tray.2") ?? UIImage(), title: "All mail"),
        Item(image: UIImage(systemName: "exclamationmark.octagon") ?? UIImage(), title: "Spam"),
        Item(image: UIImage(systemName: "trash") ?? UIImage(), title: "Trash"),
        Item(image: UIImage(systemName: "plus") ?? UIImage(), title: "Create new"),
        Item(image: UIImage(systemName: "gearshape") ?? UIImage(), title: "Settings"),
        Item(image: UIImage(systemName: "exclamationmark.bubble") ?? UIImage(), title: "Send feedback"),
        Item(image: UIImage(systemName: "questionmark.circle") ?? UIImage(), title: "help")
    ]

    func getItems() -> [Item] {
        items
    }
}
