//
//  PendingOperations.swift
//  iTunesClient
//
//  Created by Bobby Conti on 6/29/19.
//  Copyright © 2019 Bobby Conti. All rights reserved.
//

import Foundation

class PendingOperations {
    var downloadsInProgress = [IndexPath: Operation]()
    
    let downloadQueue = OperationQueue()
}
