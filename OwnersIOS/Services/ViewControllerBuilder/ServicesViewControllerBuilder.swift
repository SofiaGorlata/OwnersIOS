//
//  ServicesViewControllerBuilder.swift
//  OwnersIOS
//
//  Created by Sofia on 15.12.2019.
//  Copyright © 2019 Sofia. All rights reserved.
//

import Foundation

class ServicesViewControllerBuilder {
    
    class func build() -> ServicesViewController {
        let viewController = ServicesViewController()
        
        let viewModelInitializer = ServicesViewModelInitializer()
        let viewModelHolder = ServicesCollectionHolder(items: viewModelInitializer.initializeCollection())
        viewController.dataSource = ServicesCollectionDataSource(viewModelHolder: viewModelHolder)
        viewController.delegate = ServicesCollectionDelegate()
        
        return viewController
    }
}
