//
//  ItunesEntity.swift
//  iTunesClient
//
//  Created by Bobby Conti on 5/7/19.
//  Copyright © 2019 Bobby Conti. All rights reserved.
//

import Foundation

protocol ItunesEntity: QueryItemProvider {
    var entityName: String { get }
}

extension ItunesEntity {
    var queryItem: URLQueryItem {
        return URLQueryItem(name: "entity", value: entityName)
    }
}

enum MusicEntity: String {
    case musicArtist
    case musicTrack
    case album
    case musicVideo
    case mix
    case song
}

extension MusicEntity: ItunesEntity {
    var entityName: String {
        return self.rawValue
    }
}
