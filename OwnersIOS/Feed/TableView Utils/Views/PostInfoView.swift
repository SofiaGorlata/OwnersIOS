//
//  PostInfoView.swift
//  OwnersIOS
//
//  Created by Sofia on 15.12.2019.
//  Copyright © 2019 Sofia. All rights reserved.
//

import UIKit

class PostInfoView: UIView {
    private var titleLabel: UILabel!
    private var descriptionLabel: UILabel!
    
    func load() {
        addTitle("Title")
        addDescriptionLabel("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
    }
    
    private func addTitle(_ text: String) {
        guard titleLabel == nil else {
            return
        }
        
        titleLabel = UILabel()
        addSubview(titleLabel)
        titleLabel.snp.makeConstraints { maker in
            maker.top.equalToSuperview().offset(5)
            maker.leading.equalToSuperview().offset(20)
        }
        titleLabel.textColor = .darkPurple
        titleLabel.font = UIFont.boldSystemFont(ofSize: 15)
        titleLabel.text = text
    }
    
    private func addDescriptionLabel(_ text: String) {
        guard descriptionLabel == nil else {
            return
        }
        
        descriptionLabel = UILabel()
        addSubview(descriptionLabel)
        descriptionLabel.snp.makeConstraints { maker in
            maker.top.equalTo(titleLabel.snp.bottom).offset(5)
            maker.leading.equalToSuperview().offset(20)
            maker.trailing.equalToSuperview().offset(-20)
            maker.bottom.equalToSuperview()
        }
        descriptionLabel.font = UIFont.systemFont(ofSize: 12)
        descriptionLabel.textColor = .darkPurple
        descriptionLabel.text = text
        descriptionLabel.numberOfLines = 0
        descriptionLabel.lineBreakMode = .byWordWrapping
    }
}
