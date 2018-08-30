//
//  FirstViewController.swift
//  igPractice
//
//  Created by Derek on 2018/8/30.
//  Copyright © 2018年 Derek. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, UISearchResultsUpdating {
    func updateSearchResults(for searchController: UISearchController) {
        
    }
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.prefersLargeTitles = false
        let searchController = UISearchController(searchResultsController: nil)
        searchController.searchResultsUpdater = self
        searchController.dimsBackgroundDuringPresentation = false
        navigationItem.searchController = searchController
        definesPresentationContext = true
        navigationItem.hidesSearchBarWhenScrolling = false
        searchController.searchBar.barStyle = .default
        searchController.searchBar.barTintColor = .black
        searchController.searchBar.sizeToFit()
        let image = UIImage()
        self.navigationController?.navigationBar.setBackgroundImage(image, for: .default)
        self.navigationController?.navigationBar.shadowImage = image
        // Do any additional setup after loading the view, typically from a nib.
    }


}

