//
//  ServiceCollectionCell.swift
//  OwnersIOS
//
//  Created by Sofia on 15.12.2019.
//  Copyright © 2019 Sofia. All rights reserved.
//

import UIKit

class ServiceCollectionCell: UICollectionViewCell {
    
    var imageView: UIImageView!
    var title: UILabel!
    
    func load(_ viewModel: ServiceCollectionViewModel) {
        backgroundColor = .white
        layer.cornerRadius = UIScreen.main.bounds.width * 0.03
        layer.shadowColor = UIColor.purpleBlue.cgColor
        layer.shadowOffset = CGSize(width: 0, height: 2.0)
        layer.shadowOpacity = 0.5
        layer.masksToBounds = false
        addImageView(imageName: viewModel.imageName)
        addTitle(viewModel.title)
    }
    
    private func addImageView(imageName: String) {
        guard imageView == nil else {
            return
        }
        
        imageView = UIImageView()
        addSubview(imageView)
        imageView.snp.makeConstraints { maker in
            maker.center.equalToSuperview()
            maker.size.equalToSuperview().multipliedBy(0.3)
        }
        
        imageView.image = UIImage(named: imageName)?.tint(with: .purpleBlue)
    }
    
    private func addTitle(_ labelString: String) {
        guard title == nil else {
            return
        }
        
        title = UILabel()
        addSubview(title)
        title.snp.makeConstraints { maker in
            maker.top.equalTo(imageView.snp.bottom).offset(5)
            maker.centerX.equalTo(imageView.snp.centerX)
        }
        title.text = labelString
        title.textColor = .darkPurple
    }
    
}
