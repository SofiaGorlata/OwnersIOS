//
//  ServicesCollectionHolder.swift
//  OwnersIOS
//
//  Created by Sofia on 15.12.2019.
//  Copyright © 2019 Sofia. All rights reserved.
//

import Foundation

class ServicesCollectionHolder {
    private let items: [ServiceCollectionViewModel]
    
    init(items: [ServiceCollectionViewModel]) {
        self.items = items
    }
    
    var itemsCount: Int {
        return items.count
    }
    
    func item(at index: Int) -> ServiceCollectionViewModel {
        return items[index]
    }
}
