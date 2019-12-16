//
//  PostView.swift
//  OwnersIOS
//
//  Created by Sofia on 16.12.2019.
//  Copyright © 2019 Sofia. All rights reserved.
//

import UIKit

class PostView: UIView {
    
    var imageView: UIImageView!
    var titleInputView: InputView!

    
    func load() {
        addImageView()
        addInputView()
    }
    
    private func addImageView() {
        imageView = UIImageView()
        addSubview(imageView)
        imageView.backgroundColor = .lightGray
        imageView.contentMode = .center
        imageView.image = UIImage(named: "plus")
        
        imageView.layer.cornerRadius = 5
        imageView.snp.makeConstraints { maker in
            maker.top.equalToSuperview()
            maker.leading.equalToSuperview()
            maker.trailing.equalToSuperview()
            maker.height.equalToSuperview().multipliedBy(0.3)
        }
    }
    
    private func addInputView() {
        titleInputView = InputView()
        addSubview(titleInputView)
        
        titleInputView.snp.makeConstraints { maker in
            maker.top.equalTo(imageView.snp.bottom).offset(10)
            maker.leading.equalToSuperview()
            maker.trailing.equalToSuperview()
            maker.height.equalTo(50)
        }
        
        titleInputView.load()
    }
}
