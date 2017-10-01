//
//  ProductsTableViewController.swift
//  GoodAsOldPhones
//
//  Created by Ally♥ on 10/1/17.
//  Copyright © 2017 Huntington University. All rights reserved.
//

import UIKit

class ProductsTableViewController: UITableViewController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return 5 //calls 5 cells
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ProductCell", for: indexPath)
        
            cell.textLabel?.text = "Hello Friend." //? means "first check if this exists"
            cell.imageView?.image = UIImage(named: "image-cell1")
        
        return cell //returns created cell
    }

}
