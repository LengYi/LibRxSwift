//
//  Music.swift
//  LRxSwift
//
//  Created by zj-db1140 on 2018/6/27.
//  Copyright © 2018年 zj-db1140. All rights reserved.
//

import Foundation

struct Music {
    let name: String
    let singer: String
    
    init(name: String, singer: String) {
        self.name = name
        self.singer = singer
    }
}

extension Music: CustomStringConvertible {
    var description: String {
        return "name: \(name) singer: \(singer)"
    }
}
