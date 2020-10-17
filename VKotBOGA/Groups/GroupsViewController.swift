//
//  GroupsViewController.swift
//  VKotBOGA
//
//  Created by Александр Павлов on 17.10.2020.
//  Copyright © 2020 Александр Павлов. All rights reserved.
//

import UIKit

class GroupsViewController: UITableViewController {
    
    var groups = [
        Group(groupName: "pikabu", groupAvatar: "richard"),
        Group(groupName: "ubm", groupAvatar: "richard"),
        Group(groupName: "richard", groupAvatar: "richard"),
        Group(groupName: "kal", groupAvatar: "richard"),
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
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
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            groups.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }
    
    @IBAction func addGroup(segue: UIStoryboardSegue) {
        if segue.identifier == "addGroup" {
            guard let allGroupsController = segue.source as? FindGroupsViewController else {
                return
            }
            
            if let indexPath = allGroupsController.tableView.indexPathForSelectedRow {
                let group = allGroupsController.groups[indexPath.row]
                if !groups.contains(where: { $0.groupName == group.groupName}) {
                    groups.append(group)
                    tableView.reloadData()
                }
            }
        }
    }
    
    
    
}
