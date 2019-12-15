//
//  FeedViewController.swift
//  OwnersIOS
//
//  Created by Sofia on 15.10.2019.
//  Copyright © 2019 Sofia. All rights reserved.
//

import UIKit

class FeedViewController: ParentViewController {

    var dataSource: FeedTableViewDataSource!
    var delegate: FeedTableViewDelegate!
    var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .sand
        
        addTableView()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        //tableView.rowHeight = UITableView.automaticDimension
        tableView.rowHeight = 600
    }
    
    
    private func addTableView() {
        tableView = UITableView()
        
        view.addSubview(tableView)
        tableView.snp.makeConstraints { maker in
            maker.edges.equalToSuperview()
        }
        
        tableView.delegate = delegate
        tableView.dataSource = dataSource
        tableView.register(FeedTableViewCell.self, forCellReuseIdentifier: FeedTableViewCell.description())
        
    }
}
