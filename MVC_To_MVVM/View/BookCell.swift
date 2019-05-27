//
//  BookCell.swift
//  MVC_To_MVVM
//
//  Created by Kirti Parghi on 5/27/19.
//  Copyright © 2019 Kirti Parghi. All rights reserved.
//

import UIKit

class BookCell: UITableViewCell {

    var bookViewModel : BookViewModel! {
        didSet {
            textLabel?.text = bookViewModel.name
            accessoryType = bookViewModel.accessoryType
        }
    }
    
//    var book : Book! {
//        didSet {
//            textLabel?.text = book.name
//        }
//    }
    
    override func setHighlighted(_ highlighted: Bool, animated: Bool) {
        super.setHighlighted(highlighted, animated: animated)
        contentView.backgroundColor = isHighlighted ? .green:.white
        textLabel?.textColor = isHighlighted ? UIColor.white : .blue
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: .subtitle, reuseIdentifier: reuseIdentifier)
        
        //cell customization
        textLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        textLabel?.numberOfLines = 0
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
}
