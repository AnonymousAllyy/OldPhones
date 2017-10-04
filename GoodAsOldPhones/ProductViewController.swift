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
    
    var productName: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        productNameLabel.text = productName
        ProductImageView.image = #imageLiteral(resourceName: "phone-fullscreen3")
        

        // Do any additional setup after loading the view.
    }

    @IBAction func addToCartPressed(_ sender: Any) {
        print("button tapped")
    }
    
}
