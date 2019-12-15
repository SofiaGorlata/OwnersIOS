//
//  ServicesCollectionDataSource.swift
//  OwnersIOS
//
//  Created by Sofia on 15.12.2019.
//  Copyright © 2019 Sofia. All rights reserved.
//

import UIKit

class ServicesCollectionDataSource: NSObject, UICollectionViewDataSource {
    
    private let viewModelHolder: ServicesCollectionHolder
    
    init(viewModelHolder: ServicesCollectionHolder) {
        self.viewModelHolder = viewModelHolder
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return viewModelHolder.itemsCount
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: ServiceCollectionCell.description(), for: indexPath) as! ServiceCollectionCell
        
        cell.load(viewModelHolder.item(at: indexPath.row))
        return cell
    }
}

