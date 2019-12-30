//
//  MenuViewController.swift
//  decide
//
//  Created by Uditi Sharma on 12/26/19.
//  Copyright © 2019 Uditi Sharma. All rights reserved.
//

import UIKit
private let reuseIdentifier = "MenuOptionCell"

class MenuViewController: UIViewController {
    
    var tableView : UITableView!
    var delegate : HomeViewControllerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureTableView()
    }
    func configureTableView() {
        tableView = UITableView()
        tableView.delegate = self
        tableView.dataSource = self

        tableView.register(MenuOptionCellTableViewCell.self, forCellReuseIdentifier: reuseIdentifier)
        tableView.backgroundColor = .darkGray
//        tableView.separatorStyle = .none
        tableView.rowHeight = 80 
        
        view.addSubview(tableView)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        tableView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        tableView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
    }
}

extension MenuViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4 
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: reuseIdentifier, for: indexPath) as! MenuOptionCellTableViewCell
        
        let menuOption = MenuOption(rawValue: indexPath.row)
        cell.descriptionLabel.text = menuOption?.description
        
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let menuOption = MenuOption(rawValue: indexPath.row)
        delegate?.handleMenuToggle(forMenuOption: menuOption)

    }
    
}
