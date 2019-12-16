//
//  InputView.swift
//  OwnersIOS
//
//  Created by Sofia on 16.12.2019.
//  Copyright © 2019 Sofia. All rights reserved.
//

import UIKit

class InputView: UIView {
    
    var title: UILabel!
    var inputTextField: UITextField!
    
    func load() {
        addTitle()
        addInputTextField()
    }
    
    private func addTitle() {
        title = UILabel()
        title.text = "Title"
        title.textColor = .darkGray
        title.font = UIFont.boldSystemFont(ofSize: 15)
        addSubview(title)
        
        title.snp.makeConstraints { maker in
            maker.leading.equalToSuperview()
            maker.top.equalToSuperview()
        }
    }
    
    private func addInputTextField() {
        inputTextField = UITextField()
        addSubview(inputTextField)
        
        inputTextField.snp.makeConstraints { maker in
            maker.top.equalTo(title.snp.bottom)
            maker.leading.equalToSuperview()
            maker.trailing.equalToSuperview()
            maker.bottom.equalToSuperview()
        }
        
        let separator = UIView()
        addSubview(separator)
        separator.backgroundColor = .darkPurple
        
        separator.snp.makeConstraints { maker in
            maker.bottom.equalTo(inputTextField.snp.bottom)
            maker.leading.equalTo(inputTextField.snp.leading)
            maker.trailing.equalTo(inputTextField.snp.trailing)
            maker.height.equalTo(2)
        }
    }
    
}
