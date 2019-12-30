//
//  MenuOptionCellTableViewCell.swift
//  decide
//
//  Created by Uditi Sharma on 12/29/19.
//  Copyright © 2019 Uditi Sharma. All rights reserved.
//

import UIKit

class MenuOptionCellTableViewCell: UITableViewCell {

    let descriptionLabel : UILabel = {
        let label = UILabel()
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 18)
        label.text = "sample "
        return label
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        backgroundColor = .darkGray
        
        addSubview(descriptionLabel)
        descriptionLabel.translatesAutoresizingMaskIntoConstraints = false
        descriptionLabel.centerYAnchor.constraint(equalTo: centerYAnchor, constant: 12).isActive = true
        descriptionLabel.leftAnchor.constraint(equalTo: leftAnchor, constant: 12).isActive = true 
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
