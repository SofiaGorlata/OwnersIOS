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
    
    var dataSource: ServicesCollectionDataSource!
    var delegate: ServicesCollectionDelegate!
    var serviceCollection: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        addCollectionView()
        
        view.backgroundColor = .purpleBlue
    }
    
    private func addCollectionView() {
        let layout = UICollectionViewFlowLayout()
        let size = UIScreen.main.bounds.width * 0.44
        layout.itemSize = CGSize(width: size, height: size)
        layout.scrollDirection = .vertical
        let inset = UIScreen.main.bounds.width * 0.05
        layout.sectionInset = UIEdgeInsets(top: inset, left: inset, bottom: inset, right: inset)
        layout.minimumLineSpacing = UIScreen.main.bounds.width * 0.02
        layout.minimumInteritemSpacing = 0
        serviceCollection = UICollectionView(frame: .zero, collectionViewLayout: layout)
        
        view.addSubview(serviceCollection)
        serviceCollection.snp.makeConstraints { maker in
            maker.centerX.equalToSuperview()
            maker.width.equalToSuperview()
            maker.top.equalTo(100).offset(inset)
            maker.bottom.equalToSuperview().offset(inset * -1)
        }
        serviceCollection.dataSource = dataSource
        serviceCollection.delegate = delegate
        serviceCollection.register(ServiceCollectionCell.self, forCellWithReuseIdentifier:ServiceCollectionCell.description())
        
        serviceCollection.backgroundColor = .white
        serviceCollection.showsVerticalScrollIndicator = false
    }
}
