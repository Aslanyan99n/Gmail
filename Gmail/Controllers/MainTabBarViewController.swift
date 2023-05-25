//
//  MainTabBarViewController.swift
//  Gmail
//
//  Created by Narek on 24.05.23.
//

import UIKit

class MainTabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        generateTabBar()
        setTabBarAppearance()
    }

    func generateTabBar() {
        viewControllers = [
            generateVC(viewController: MessageViewController(), title: "", image: UIImage(systemName: "envelope"), selectedImage: UIImage(systemName: "envelope.fill")),
            generateVC(viewController: MeetViewController(), title: "", image: UIImage(systemName: "video"), selectedImage: UIImage(systemName: "video.fill")),
        ]
    }

    private func generateVC(viewController: UIViewController, title: String, image: UIImage?, selectedImage: UIImage?) -> UIViewController {
        let nvc = UINavigationController(rootViewController: viewController)
        viewController.tabBarItem.title = title
        viewController.tabBarItem.image = image
        viewController.tabBarItem.selectedImage = selectedImage
        return nvc
    }

    private func setTabBarAppearance() {
        tabBar.tintColor = Color.Icon.selectedLightColor
        tabBar.barTintColor = Color.tabBarLightColor
        tabBar.standardAppearance.shadowImage = nil
        tabBar.standardAppearance.shadowColor = nil
        tabBar.standardAppearance.stackedLayoutAppearance.normal.iconColor = Color.gray
    }
}
