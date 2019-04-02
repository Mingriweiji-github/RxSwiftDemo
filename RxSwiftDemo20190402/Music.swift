//
//  Music.swift
//  RxSwiftDemo20190402
//
//  Created by Seven on 2019/4/2.
//  Copyright © 2019年 LuoKeRen. All rights reserved.
//

import UIKit
struct Music {
    let name:String
    let singer:String
    
    init(name:String, singer:String) {
        self.name = name
        self.singer = singer
    }
    
}
extension Music: CustomStringConvertible {
    var description: String {
        return "name:\(name) singer:\(singer)"
    }
}
