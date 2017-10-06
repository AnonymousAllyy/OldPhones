//
//  ProductViewController.swift
//  GoodAsOldPhones
//
//  Created by Ally on 9/25/17.
//  Copyright © 2017 Huntington University. All rights reserved.
//

import UIKit

class ProductViewController: UIViewController {

    @IBOutlet weak var productNameLabel: UILabel!
    @IBOutlet weak var ProductImageView: UIImageView!
    
    var product: Product?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let p = product {
            productNameLabel.text = p.name
            if let i = p.productImage {
                ProductImageView.image = UIImage(named: i)
            }
        }
        

        // Do any additional setup after loading the view.
    }

    @IBAction func addToCartPressed(_ sender: Any) {
        print("button tapped")
    }
    
}
