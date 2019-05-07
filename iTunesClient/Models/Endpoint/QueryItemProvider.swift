//
//  QueryItemProvider.swift
//  iTunesClient
//
//  Created by Bobby Conti on 5/7/19.
//  Copyright © 2019 Bobby Conti. All rights reserved.
//

import Foundation

protocol QueryItemProvider {
    var queryItem: URLQueryItem { get }
}
