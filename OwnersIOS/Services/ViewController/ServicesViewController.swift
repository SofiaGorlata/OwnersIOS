//
//  ServicesViewController.swift
//  OwnersIOS
//
//  Created by Sofia on 15.10.2019.
//  Copyright © 2019 Sofia. All rights reserved.
//

import UIKit
import SnapKit

class ServicesViewController: ParentViewController {
    
    var serviceCollection: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        serviceCollection = UICollectionView()
        view.addSubview(serviceCollection)
        serviceCollection.snp.makeConstraints { maker in
            maker.edges.equalToSuperview()
        }
        
        serviceCollection.backgroundColor = .red
        
        view.backgroundColor = .purpleBlue
    }
}
