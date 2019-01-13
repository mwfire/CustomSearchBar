//
//  ViewController.swift
//  CustomSearchBar
//
//  Created by Martin Wildfeuer on 05.01.19.
//  Copyright © 2019 Martin Wildfeuer. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    lazy var searchBar = SearchBar()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
//        navigationItem.titleView = searchBar
//        searchBar.bounds.size.width = 1000
//        searchBar.bounds.size.height = 48
//        navigationController?.navigationBar.sizeToFit()
    }

}

