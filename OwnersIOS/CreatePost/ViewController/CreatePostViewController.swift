//
//  CreatePostViewController.swift
//  OwnersIOS
//
//  Created by Sofia on 15.10.2019.
//  Copyright © 2019 Sofia. All rights reserved.
//

import UIKit

class CreatePostViewController: ParentViewController {
    
    var postView: PostView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        postView = PostView()
        view.addSubview(postView)
        
        postView.snp.makeConstraints { maker in
            maker.top.equalToSuperview().offset(100)
            maker.bottom.equalToSuperview().offset(-10)
            maker.leading.equalToSuperview().offset(50)
            maker.trailing.equalToSuperview().offset(-50)
        }
        
        postView.load()
    }
}
