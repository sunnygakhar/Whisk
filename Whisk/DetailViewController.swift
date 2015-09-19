//
//  DetailViewController.swift
//  Whisk
//
//  Created by Sunny Gakhar on 9/19/15.
//  Copyright © 2015 Sunny Gakhar. All rights reserved.
//
import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var detailDescriptionLabel: UILabel!
    @IBOutlet var login_button: UIButton!
    @IBOutlet var request_button: UIButton!
    @IBOutlet var logout_button: UIButton!
    
    @IBOutlet var name_label: UILabel!
    @IBOutlet var status_label: UILabel!

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

        self.configureView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

