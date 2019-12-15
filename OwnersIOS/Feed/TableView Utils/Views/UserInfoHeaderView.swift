//
//  UserInfoHeaderView.swift
//  OwnersIOS
//
//  Created by Sofia on 15.12.2019.
//  Copyright © 2019 Sofia. All rights reserved.
//

import UIKit

class UserInfoHeaderView: UIView {
    
    private var imageView: UIView!
    private var title: UILabel!
    
    func load() {
        addImageView()
        addTitle("Title")
    }
    
    private func addImageView() {
        guard imageView == nil else {
            return
        }
        
        imageView = UIImageView()
        addSubview(imageView)
        imageView.snp.makeConstraints { maker in
            maker.centerY.equalToSuperview()
            maker.leading.equalToSuperview().offset(20)
            maker.size.equalTo(UIScreen.main.bounds.width * 0.15)
        }
        
        imageView.layer.cornerRadius = 0.075 * UIScreen.main.bounds.width
        imageView.backgroundColor = .purpleBlue
    }
    
    private func addTitle(_ text: String) {
        guard title == nil else {
            return
        }
        
        title = UILabel()
        addSubview(title)
        title.snp.makeConstraints { maker in
            maker.leading.equalTo(imageView.snp.trailing).offset(15)
            maker.centerY.equalToSuperview()
        }
        title.textColor = .darkPurple
        title.text = text
    }
}
