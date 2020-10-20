//
//  FindGroupsViewController.swift
//  VKotBOGA
//
//  Created by Александр Павлов on 17.10.2020.
//  Copyright © 2020 Александр Павлов. All rights reserved.
//

import UIKit

class FindGroupsViewController: UITableViewController {

    var groups = [
        Group(groupName: "find_pikabu", groupAvatar: "richard"),
        Group(groupName: "find_ubm", groupAvatar: "richard"),
        Group(groupName: "find_richard", groupAvatar: "richard"),
        Group(groupName: "find_kal", groupAvatar: "richard"),
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return groups.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "groupCell", for: indexPath) as! GroupViewCell

        cell.groupName.text = groups[indexPath.row].groupName
        cell.groupAvatar.image = UIImage(named: groups[indexPath.row].groupAvatar)

        return cell
    }

    


}
