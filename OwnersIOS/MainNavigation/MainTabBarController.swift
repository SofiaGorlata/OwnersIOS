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
        
        let feedViewController = UIViewController()
        let createPostViewController = UIViewController()
        let servicesViewController = UIViewController()
        
        tabBarList = [feedViewController, createPostViewController, servicesViewController]

        viewControllers = tabBarList
        
        let feedItem = tabBar.items?[0]
        feedItem?.selectedImage = UIImage(named: "baseline_house_white")?.tint(with: .blue)
        feedItem?.image = UIImage(named: "baseline_house_white")?.tint(with: .lightGray)
        //feedItem?.imageInsets = UIEdgeInsets(top: 6, left: 0, bottom: -6, right: 0)
        
        let addPostItem = tabBar.items?[1]
        addPostItem?.selectedImage = UIImage(named: "add_post")?.tint(with: .blue)
        addPostItem?.image = UIImage(named: "add_post")?.tint(with: .lightGray)
        addPostItem?.imageInsets = UIEdgeInsets(top: 6, left: 0, bottom: -6, right: 0)
        
        let services = tabBar.items?[2]
        services?.selectedImage = UIImage(named: "services")?.tint(with: .blue)
        services?.image = UIImage(named: "services")?.tint(with: .lightGray)
        services?.imageInsets = UIEdgeInsets(top: 6, left: 0, bottom: -6, right: 0)
    }
}
