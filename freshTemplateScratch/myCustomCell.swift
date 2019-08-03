//
//  myCustomCell.swift
//  freshTemplateScratch
//
//  Created by Nathaniel Mcdowell on 8/3/19.
//  Copyright © 2019 Nathaniel Mcdowell. All rights reserved.
//

import UIKit

class myCustomCell: UITableViewCell {
    
    var cellStuff: CellNode! {
        didSet {
            cellTitle.text = cellStuff.title
            bodyText.text = cellStuff.body
            
        }
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style:style,reuseIdentifier: reuseIdentifier)

        contentView.addSubview(cellTitle)
        contentView.addSubview(bodyText)
        contentView.addSubview(decreaseButton)
        contentView.addSubview(increaseButton)
        contentView.addSubview(featureImage)
        
        increaseButton.doConstraints(top: contentView.topAnchor, left: contentView.leadingAnchor, bottom: nil, right: nil, paddingTop: 5, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 50, height: 0)
        decreaseButton.doConstraints(top: increaseButton.bottomAnchor, left: contentView.leadingAnchor, bottom: nil, right: nil, paddingTop: 10, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 50, height: 0)
        
        cellTitle.doConstraints(top: contentView.topAnchor, left: decreaseButton.trailingAnchor, bottom: nil, right: nil, paddingTop: 5, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 240, height: 0)
        bodyText.doConstraints(top: cellTitle.bottomAnchor, left: decreaseButton.trailingAnchor, bottom: nil, right: nil, paddingTop: 5, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 240, height: 0)
        featureImage.doConstraints(top: contentView.topAnchor, left: nil, bottom: nil, right: contentView.trailingAnchor, paddingTop: 10, paddingLeft: 5, paddingBottom: 10, paddingRight: -10, width: 110, height: 80)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private let decreaseButton: UIButton = {
        let btn = UIButton()
        btn.setImage(UIImage(named: "minusTb"), for: .normal)
        btn.imageView?.contentMode = .scaleAspectFill
        btn.clipsToBounds = true
        btn.translatesAutoresizingMaskIntoConstraints = false
        return btn
    }()
    
    var cellTitle : UILabel = {
       let myLbl = UILabel()
        myLbl.font = UIFont(name: "GillSans", size: 20)
        myLbl.backgroundColor = .clear
        myLbl.textColor = .black
       myLbl.translatesAutoresizingMaskIntoConstraints = false
        return myLbl
    }()
    var bodyText:UILabel = {
        let txtView = UILabel()
        txtView.font = UIFont(name: "GillSans", size: 16)
        txtView.textColor = .purple
        txtView.numberOfLines = 0 //enables word wrapping
       txtView.translatesAutoresizingMaskIntoConstraints = false
        return txtView
    }()
    
    private let increaseButton: UIButton = {
        let inc = UIButton()
        inc.translatesAutoresizingMaskIntoConstraints = false
        inc.setImage(UIImage(named: "addTb"), for: .normal)
        inc.imageView?.contentMode = .scaleAspectFill
        
        return inc
    }()
    
    private let featureImage : UIImageView = {
        
        let img = UIImageView()
        img.translatesAutoresizingMaskIntoConstraints = false
        img.contentMode = .scaleAspectFill
        img.clipsToBounds = true
        img.image = UIImage(named: "hammer")
        img.layer.cornerRadius = 10
        img.layer.masksToBounds = true
        
        return img
    }()
}
