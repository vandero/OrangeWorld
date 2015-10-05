//
//  DealDetailsInterfaceController.swift
//  OrangeWorld
//
//  Created by Robin on 04/10/15.
//  Copyright © 2015 ING. All rights reserved.
//

import WatchKit

class DealDetailsInterfaceController: WKInterfaceController {
    @IBOutlet var dealDescription: WKInterfaceLabel!
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        let deal = context as! OrangeDeal
        dealDescription.setText(deal.dealDescription)
        self.setTitle("< Overview")
    }
}
