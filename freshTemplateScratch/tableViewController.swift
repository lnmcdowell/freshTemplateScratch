//
//  ViewController.swift
//  freshTemplateScratch
//
//  Created by Nathaniel Mcdowell on 8/3/19.
//  Copyright © 2019 Nathaniel Mcdowell. All rights reserved.
//

import UIKit

class tableViewController: UITableViewController {
    
    fileprivate let CELL_ID = "CELL_ID"

    var cellData:[CellData?] = [CellData]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .yellow
        navigationItem.title = "Yep"
        // Do any additional setup after loading the view, typically from a nib.
        
        setupViews()
    }

    fileprivate func setupViews(){
        tableView.register(myCustomCell.self, forCellReuseIdentifier: CELL_ID)
        var nodearray:[CellNode] = [CellNode]()
        nodearray.append(CellNode(title:"Me",body:"More stuff to say in the body.  I needed something besides made up text.  Lorum ipsem is too easy!",index:nil))
        nodearray.append(CellNode(title:"You",body:"Shout hallejuhah, and let slip the dogs of war!  Any madness to make this long enough.",index:nil))
        nodearray.append(CellNode(title:"Them",body:"Sing something Loud!!! And play something even louder.  Maybe let somebody bang some drums",index:nil))
        cellData.append(CellData(nodes:nodearray))
    
    }
    override func numberOfSections(in tableView: UITableView) -> Int {
        return cellData.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (cellData[section]?.nodes.count)!
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: CELL_ID, for: indexPath) as! myCustomCell
        
        let section = indexPath.section
        let thisnode = cellData[section]?.nodes[indexPath.row]
        cell.cellStuff = thisnode
     
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
}

