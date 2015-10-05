//
//  MainInterfaceController.swift
//  OrangeWorld
//
//  Created by Robin on 05/10/15.
//  Copyright © 2015 ING. All rights reserved.
//

import WatchKit

class MainInterfaceController: WKInterfaceController {
    @IBOutlet var mainTable: WKInterfaceTable!
    
    let menuItems = ["Deals", "Cashback", "History"]
    let menuImages = ["deals", "dollar", "trends"]
    
    override init() {
        super.init()
        loadTable()
    }
    
    func loadTable() {
        mainTable.setNumberOfRows(3, withRowType: "MainInterfaceRowController")
        for (index, text) in menuItems.enumerate() {
            let rowController = mainTable.rowControllerAtIndex(index) as! MainInterfaceRowController
            rowController.label.setText(text)
            rowController.image.setImage(UIImage(named: menuImages[index]))
        }
    }
    
    override func table(table: WKInterfaceTable, didSelectRowAtIndex rowIndex: Int) {
        if rowIndex == 0 {
            pushControllerWithName("OrangeDealsInterfaceController", context: nil)
        }
    }
}
