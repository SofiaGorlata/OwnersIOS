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
        feedItem?.selectedImage = UIImage(named: "baseline_house_white")?.tint(with: UIColor.purpleBlue)
        feedItem?.image = UIImage(named: "baseline_house_white")?.tint(with: UIColor.lightPurple)
        feedItem?.imageInsets = UIEdgeInsets(top: 6, left: 0, bottom: 0, right: 0)
        
        let addPostItem = tabBar.items?[1]
        addPostItem?.selectedImage = UIImage(named: "baseline_add_box_white")?.tint(with: UIColor.purpleBlue)
        addPostItem?.image = UIImage(named: "baseline_add_box_white")?.tint(with: UIColor.lightPurple)
        addPostItem?.imageInsets = UIEdgeInsets(top: 6, left: 0, bottom: 0, right: 0)
        
        let services = tabBar.items?[2]
        services?.selectedImage = UIImage(named: "baseline_build_white")?.tint(with: UIColor.purpleBlue)
        services?.image = UIImage(named: "baseline_build_white")?.tint(with: UIColor.lightPurple)
        services?.imageInsets = UIEdgeInsets(top: 6, left: 0, bottom: 0, right: 0)
    }
}
