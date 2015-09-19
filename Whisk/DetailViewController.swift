//
//  DetailViewController.swift
//  Whisk
//
//  Created by Sunny Gakhar on 9/19/15.
//  Copyright © 2015 Sunny Gakhar. All rights reserved.
//

import UIKit
import Alamofire


class DetailViewController: UIViewController {

    @IBOutlet weak var detailDescriptionLabel: UILabel!

    var detailItem: AnyObject? {
        didSet {
            // Update the view.
            self.configureView()
        }
    }

    func configureView() {
        // Update the user interface for the detail item.
        if let detail = self.detailItem {
            if let label = self.detailDescriptionLabel {
                label.text = detail.description
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        Alamofire.request(.GET, "https://login.uber.com/oauth/authorize", parameters: ["response_type": "code", "client_id": "6yHr3Lz53gnVtyUDb5YQyu7Uskqgxquj"])     ///Step 1
        var access_token
        var parameters = [
        "client_secret": "",
        "client_id": "6yHr3Lz53gnVtyUDb5YQyu7Uskqgxquj",
        "grant_type": access_token,
        "redirect_uri":42,
        "code": access_token
        ]
        Alamofire.request(.POST, "https://login.uber.com/oauth/token", parameters: parameters).response   //Step 3
        var headers = ["Authorization": String("BEARER %s", access_token)]
        Alamofire.request(.GET, "https://api.uber.com/v1/products?latitude=37.7759792&longitude=-122.41823", headers: headers)
        
        self.configureView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

