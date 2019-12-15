//
//  MainTabBarController.swift
//  OwnersIOS
//
//  Created by Sofia on 12.10.2019.
//  Copyright © 2019 Sofia. All rights reserved.
//

import UIKit

class MainTabBarController: UITabBarController {
    
    private var tabBarList: [UIViewController]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        selectedIndex = 0
        
        setupTabBarItems()
    }
    
    private func setupTabBarItems() {
        tabBar.backgroundColor = .white
        tabBar.barTintColor = .white
        tabBar.tintColor = UIColor.purpleBlue
        tabBar.unselectedItemTintColor = UIColor.tabbarGray
        
        let feedViewController = FeedViewController()
        let navFeedViewController = UINavigationController(rootViewController: feedViewController)
        
        let createPostViewController = CreatePostViewController()
        let navCreatePostViewController = UINavigationController(rootViewController: createPostViewController)
        
        
        let servicesViewController = ServicesViewControllerBuilder.build()
        let navServicesViewController = UINavigationController(rootViewController: servicesViewController)
        
        
        tabBarList = [navFeedViewController, navCreatePostViewController, navServicesViewController]

        viewControllers = tabBarList
        
        let feedItem = tabBar.items?[0]
        feedItem?.image = UIImage(named: "home")?.tint(with: .darkPurple)
        
        let addPostItem = tabBar.items?[1]
        addPostItem?.image = UIImage(named: "add-new")?.tint(with: .darkPurple)
        
        let services = tabBar.items?[2]
        services?.image = UIImage(named: "maintenance")?.tint(with: .darkPurple)
    }
}
