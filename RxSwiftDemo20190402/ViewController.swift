//
//  ViewController.swift
//  RxSwiftDemo20190402
//
//  Created by Seven on 2019/4/2.
//  Copyright © 2019年 LuoKeRen. All rights reserved.
//

import UIKit
import RxSwift

class ViewController: UIViewController {
    let tableView = UITableView()
    let viewModel = MusicViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        setUI()
    }
    func setUI(){
        self.tableView.frame = self.view.bounds
        self.view.addSubview(self.tableView)
        self.tableView.delegate = self
        self.tableView.dataSource = self
        self.tableView .register(UITableViewCell.self, forCellReuseIdentifier: "musicCell")
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.data.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "musicCell", for: indexPath)
        let music = viewModel.data[indexPath.row]
        cell.textLabel?.text = music.name
        cell.detailTextLabel?.text = music.singer
        return cell
    }
    
}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("选中cell：\(viewModel.data[indexPath.row])")
    }
}
