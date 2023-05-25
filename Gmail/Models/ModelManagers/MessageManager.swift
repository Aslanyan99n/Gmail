//
//  MessageManager.swift
//  Gmail
//
//  Created by Narek on 25.05.23.
//

import UIKit

class MessageManager {
    static let shared = MessageManager()

    private init() { }

    var messages = [
        Message(image: UIImage(systemName: "person.circle") ?? UIImage(), name: "Udemy", date: "25 May", title: "New Courses", description: "Description Text", fileName: "CV.pdf"),
        Message(image: UIImage(systemName: "person.circle") ?? UIImage(), name: "Udemy", date: "25 May", title: "New Courses", description: "Description Text", fileName: "CV.pdf"),
        Message(image: UIImage(systemName: "person.circle") ?? UIImage(), name: "Udemy", date: "25 May", title: "New Courses", description: "Description Text", fileName: "CV.pdf"),
        Message(image: UIImage(systemName: "person.circle") ?? UIImage(), name: "Udemy", date: "25 May", title: "New Courses", description: "Description Text", fileName: "CV.pdf"),
        Message(image: UIImage(systemName: "person.circle") ?? UIImage(), name: "Udemy", date: "25 May", title: "New Courses", description: "Description Text", fileName: "CV.pdf"),
        Message(image: UIImage(systemName: "person.circle") ?? UIImage(), name: "Udemy", date: "25 May", title: "New Courses", description: "Description Text", fileName: "CV.pdf"),
    ]

    func getMessages() -> [Message] {
        return messages
    }

}
