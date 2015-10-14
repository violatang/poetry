//
//  MenuTableViewCell.swift
//  poetry
//
//  Created by tang on 15/8/2.
//  Copyright © 2015年 panda2r. All rights reserved.
//

import UIKit

class MenuTableViewCell: UITableViewCell {

    //MARK:Properties
    
    @IBOutlet weak var menuLabel: UILabel!
    
    @IBOutlet weak var menuImage: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
