//
//  DealOverviewInterfaceController.swift
//  OrangeWorld
//
//  Created by Robin on 04/10/15.
//  Copyright © 2015 ING. All rights reserved.
//

import WatchKit

class DealOverviewInterfaceController: WKInterfaceController {

    @IBOutlet var dealImage: WKInterfaceImage!
    var currentDeal : OrangeDeal?
    
    override init() {
    }
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        currentDeal = context as? OrangeDeal
        dealImage.setImage(UIImage(named: currentDeal!.imageName))
        self.setTitle("< Categories")
    }
    @IBAction func detailsButtonClicked() {
        presentControllerWithName("DealDetailsInterfaceController", context: currentDeal)
    }
}
