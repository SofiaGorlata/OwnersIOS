//
//  FeedTableViewCell.swift
//  OwnersIOS
//
//  Created by Sofia on 15.12.2019.
//  Copyright © 2019 Sofia. All rights reserved.
//

import UIKit

class FeedTableViewCell: UITableViewCell {
    
    private var userInfoHeaderView: UserInfoHeaderView!
    private var photoImageView: UIImageView!
    private var footerView: PostInfoView!
    
    override func prepareForReuse() {
        
        userInfoHeaderView.removeFromSuperview()
        userInfoHeaderView = nil
        
        photoImageView.removeFromSuperview()
        photoImageView = nil
        
        footerView.removeFromSuperview()
        footerView = nil
    }
    
    func load() {
        addHeaderView()
        addPhotoImageView()
        addPostInfoView()
    }
    
    private func addHeaderView() {
        guard userInfoHeaderView == nil else {
            return
        }
        
        userInfoHeaderView = UserInfoHeaderView()
        addSubview(userInfoHeaderView)
        userInfoHeaderView.snp.makeConstraints { maker in
            maker.top.equalToSuperview()
            maker.leading.equalToSuperview()
            maker.trailing.equalToSuperview()
            maker.height.equalTo(75)
        }
        
        userInfoHeaderView.load()
    }
    
    private func addPhotoImageView() {
        guard photoImageView == nil else { return }
        photoImageView = UIImageView()
        addSubview(photoImageView)
        photoImageView.snp.makeConstraints { maker in
            maker.leading.equalToSuperview()
            maker.trailing.equalToSuperview()
            maker.top.equalTo(userInfoHeaderView.snp.bottom)
            maker.height.equalTo(400)
        }
        
        photoImageView.backgroundColor = .red
    }
    
    private func addPostInfoView() {
        guard footerView == nil else {
            return
        }
        footerView = PostInfoView()
        addSubview(footerView)
        footerView.snp.makeConstraints { maker in
            maker.top.equalTo(photoImageView.snp.bottom)
            maker.leading.equalToSuperview()
            maker.trailing.equalToSuperview()
            maker.height.equalTo(125)
        }
        footerView.load()
    }
}
