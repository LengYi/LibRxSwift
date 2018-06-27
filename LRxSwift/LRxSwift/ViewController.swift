//
//  ViewController.swift
//  LRxSwift
//
//  Created by zj-db1140 on 2018/6/27.
//  Copyright © 2018年 zj-db1140. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa

/*
DisposeBag：作用是 Rx 在视图控制器或者其持有者将要销毁的时候，自动释法掉绑定在它上面的资源。它是通过类似“订阅处置机制”方式实现（类似于 NotificationCenter 的 removeObserver）。
rx.items(cellIdentifier:）:这是 Rx 基于 cellForRowAt 数据源方法的一个封装。传统方式中我们还要有个 numberOfRowsInSection 方法，使用 Rx 后就不再需要了（Rx 已经帮我们完成了相关工作）。
    rx.modelSelected： 这是 Rx 基于 UITableView 委托回调方法 didSelectRowAt 的一个封装。
*/

class ViewController: UIViewController {
    // 表格对象
    var tableView: UITableView = UITableView.init(frame: UIScreen.main.bounds)
    // 歌曲列表数据源
    let musicListViewModel = MusicListViewModel()
    // 负责对象销毁
    let disposeBag = DisposeBag()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.initData()
    }

    func initData() {
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "musicCell")
        self.view.addSubview(self.tableView)
        
        // 将数据源数据绑定到tableView上
        musicListViewModel.data.bind(to: tableView.rx.items(cellIdentifier: "musicCell")) { _, music, cell in
            cell.textLabel?.text = music.name
            cell.detailTextLabel?.text = music.singer
        }.disposed(by: disposeBag)
        
        // tableView点击响应
        let _ = tableView.rx.modelSelected(Music.self).subscribe(onNext: { (music) in
            print("歌曲信息 \(music)")
        }, onDisposed: {
            
        })
    }
}

