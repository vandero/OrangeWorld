//
//  InterfaceController.swift
//  OrangeWorld WatchKit Extension
//
//  Created by Robin on 04/10/15.
//  Copyright © 2015 ING. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {
    let categoryLabels = ["Shoes", "Groceries", "Clothing", "Electronics"]
    let categoryImages = ["shoes", "groceries", "clothing", "electronics"]
    var deals = [OrangeDeal]()
    
    @IBOutlet var categoriesTable: WKInterfaceTable!
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
    }
    
    override init() {
        super.init()
        loadDeals()
        loadTable()
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    func loadDeals() {
        var deal = OrangeDeal()
        deal.imageName = "bjorn-borg"
        deal.dealDescription = "Bjorn Borg shoes great deal"
        deals.append(deal)

        deal = OrangeDeal()
        deal.imageName = "nike"
        deal.dealDescription = "Best shoes ever, buy it here with 5% discount through ING"
        deals.append(deal)
    }

    func loadTable() {
        categoriesTable.setNumberOfRows(categoryLabels.count, withRowType: "CategoryRowController")
        for (index, categoryLabel) in categoryLabels.enumerate() {
            let row = categoriesTable.rowControllerAtIndex(index) as! CategoryRowController
            row.categoryLabel.setText(categoryLabel)
            row.categoryImage.setImage(UIImage(named: categoryImages[index]))
        }
    }
    
    override func table(table: WKInterfaceTable, didSelectRowAtIndex rowIndex: Int) {
        //presentControllerWithName("DealOverviewInterfaceController", context: "")
        var dealControllers = [String]()
        for _ in deals {
            dealControllers.append("DealOverviewInterfaceController")
        }
        
        presentControllerWithNames(
            dealControllers, contexts: deals)
    }
}
