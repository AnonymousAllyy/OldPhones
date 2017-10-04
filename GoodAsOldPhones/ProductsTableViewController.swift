//
//  ProductsTableViewController.swift
//  GoodAsOldPhones
//
//  Created by Ally♥ on 10/1/17.
//  Copyright © 2017 Huntington University. All rights reserved.
//

import UIKit

class ProductsTableViewController: UITableViewController {
    
    var productNames: [String]? //optional array
    
    override func viewDidLoad() {
        super.viewDidLoad()
        productNames = ["1907 Wall Set", "1921 Dial Phone", "1937 Desk Set", "1984 Motorola Portable"]
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showProduct" {
            let productVC = segue.destination as? ProductViewController
            
            guard let cell = sender as? UITableViewCell,
                let indexPath = tableView.indexPath(for: cell) else {
                    return
                    
            }
                 productVC?.productName = productNames?[indexPath.row]
                }
            }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        if let pNames = productNames //checking if productNames exists
        {
            return pNames.count //returns # of items in the array
        }
        return 0 //needed to return an int if productname doesnt exists
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ProductCell", for: indexPath)
        let productName = productNames?[indexPath.row] //set the product name
        
        if let pName = productName
        {
            cell.textLabel?.text = pName
        }
        
         cell.imageView?.image = UIImage(named: "image-cell1")
        
        return cell //returns created cell
    }
    

}
