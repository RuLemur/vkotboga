//
//  GroupViewCell.swift
//  VKotBOGA
//
//  Created by Александр Павлов on 17.10.2020.
//  Copyright © 2020 Александр Павлов. All rights reserved.
//

import UIKit

class GroupViewCell: UITableViewCell {

    @IBOutlet weak var groupAvatar: UIImageView!
    @IBOutlet weak var groupName: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
