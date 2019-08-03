//
//  CellData.swift
//  freshTemplateScratch
//
//  Created by Nathaniel Mcdowell on 8/3/19.
//  Copyright © 2019 Nathaniel Mcdowell. All rights reserved.
//

import Foundation

struct CellData {
    
    var nodes: [CellNode?]
    
}

struct CellNode {
    var title: String
    var body: String
    var index: Int?
}
