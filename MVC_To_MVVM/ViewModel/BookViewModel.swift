//
//  BookViewModel.swift
//  MVC_To_MVVM
//
//  Created by Kirti Parghi on 5/27/19.
//  Copyright © 2019 Kirti Parghi. All rights reserved.
//

import Foundation
import UIKit

struct BookViewModel {
    
    let name : String
    let accessoryType : UITableViewCell.AccessoryType
    
    //Dependency Injection (DI)
    init(book: Book) {
        self.name = book.name
        accessoryType = .detailDisclosureButton
    }
}
