//
//  FeedViewControllerBuilder.swift
//  OwnersIOS
//
//  Created by Sofia on 15.12.2019.
//  Copyright © 2019 Sofia. All rights reserved.
//

import UIKit

class FeedViewControllerBuilder {
    class func build() -> FeedViewController {
        let viewController = FeedViewController()
        
        viewController.dataSource = FeedTableViewDataSource()
        viewController.delegate = FeedTableViewDelegate()
        return viewController
    }
}
