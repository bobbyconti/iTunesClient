//
//  SearchResultsController.swift
//  iTunesClient
//
//  Created by Bobby Conti on 5/1/19.
//  Copyright © 2019 Bobby Conti. All rights reserved.
//

import UIKit

class SearchResultsController: UITableViewController {
    
    let searchController = UISearchController(searchResultsController: nil)
    let dataSource = SearchResultsDataSource()

    override func viewDidLoad() {
        super.viewDidLoad()

        self.navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .cancel, target: self, action: #selector(SearchResultsController.dismissSearchResultsController))
        
        tableView.tableHeaderView = searchController.searchBar
        searchController.dimsBackgroundDuringPresentation = false
        searchController.searchResultsUpdater = self
        
        tableView.dataSource = dataSource
        
        // Covers existing view controller when another is pushed onto the stack
        definesPresentationContext = true
    }
    
    @objc func dismissSearchResultsController() {
        self.dismiss(animated: true, completion: nil)
    }
}

extension SearchResultsController: UISearchResultsUpdating {
    func updateSearchResults(for searchController: UISearchController) {
        dataSource.update(with: [Stub.artist])
        tableView.reloadData()
    }
}
