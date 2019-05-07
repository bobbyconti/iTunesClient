//
//  ItunesError.swift
//  iTunesClient
//
//  Created by Bobby Conti on 5/7/19.
//  Copyright © 2019 Bobby Conti. All rights reserved.
//

import Foundation

enum ItunesError: Error {
    case requestFailed
    case responseUnsuccessful
    case invalidData
    case jsonConversionFailure
}
