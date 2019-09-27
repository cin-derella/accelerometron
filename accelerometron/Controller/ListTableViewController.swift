//
//  ListTableViewController.swift
//  accelerometron
//
//  Created by Dante on 2019/9/27.
//  Copyright © 2019 cinderella. All rights reserved.
//

import UIKit

class MyViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
   
        tableView.delegate=self
        tableView.dataSource=self
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return imageArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "pc",for:indexPath) as? ParallaxCell
            else {return UITableViewCell()}
        
        cell.configureCell(withImage:imageArray[indexPath.row],andDescription: nameArray[indexPath.row])
        return cell
    }
    
}
