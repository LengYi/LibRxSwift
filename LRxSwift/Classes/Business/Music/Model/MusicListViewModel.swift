//
//  MusicListViewModel.swift
//  LRxSwift
//
//  Created by zj-db1140 on 2018/6/27.
//  Copyright © 2018年 zj-db1140. All rights reserved.
//

import Foundation
import RxSwift

struct MusicListViewModel {
    let data = Observable.just([
            Music(name: "无条件", singer: "陈奕迅"),
            Music(name: "你曾是少年", singer: "S.H.E"),
            Music(name: "牛逼的我", singer: "吊炸天"),
            Music(name: "别乱来", singer: "傻B")
        ])
}
