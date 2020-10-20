//
//  FriendViewCell.swift
//  VKotBOGA
//
//  Created by Александр Павлов on 16.10.2020.
//  Copyright © 2020 Александр Павлов. All rights reserved.
//

import UIKit

class FriendViewCell: UITableViewCell {


    @IBOutlet weak var friendAvatar: UIImageView!
    @IBOutlet weak var friendName: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
