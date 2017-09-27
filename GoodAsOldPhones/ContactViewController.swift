//
//  ContactViewController.swift
//  GoodAsOldPhones
//
//  Created by Ally♥ on 9/27/17.
//  Copyright © 2017 Huntington University. All rights reserved.
//

import UIKit

class ContactViewController: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(scrollView) //attaches scroll vie to the mainview heirarchy
    }
    
    override func viewWillLayoutSubviews()
    {
       super.viewWillLayoutSubviews()
        scrollView.contentSize = CGSize(width: 375, height: 800)
        //this must be added so it knows how much to scroll
    }


}
