//
//  BoggleCellTableViewCell.swift
//  AwesomeBoggle
//
//  Created by Kevin Enax on 2/16/17.
//  Copyright © 2017 Neem. All rights reserved.
//

import UIKit

class BoggleTableViewCell: UITableViewCell {
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: .subtitle, reuseIdentifier: reuseIdentifier)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
