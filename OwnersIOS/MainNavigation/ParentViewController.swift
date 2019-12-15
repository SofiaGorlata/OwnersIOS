//
//  ParentViewController.swift
//  OwnersIOS
//
//  Created by Sofia on 15.12.2019.
//  Copyright © 2019 Sofia. All rights reserved.
//

import UIKit

class ParentViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.tintColor = .purpleBlue
        let imageButton = UIImage(named: "person")
        navigationController?.navigationBar.topItem?.rightBarButtonItem = UIBarButtonItem(image: imageButton, style: .plain, target: nil, action: nil)
    }
}
