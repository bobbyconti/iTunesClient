//
//  ViewController.swift
//  iTunesClient
//
//  Created by Bobby Conti on 5/1/19.
//  Copyright © 2019 Bobby Conti. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let endpoint = Itunes.search(term: "taylor swift", media: .music)
        
        print(endpoint.request)
    }
}

