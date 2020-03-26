//
//  EntryDescriptionViewController.swift
//  garrettD_Final_Project
//
//  Created by Devin Garrett on 3/17/20.
//  Copyright © 2020 Devin Garrett. All rights reserved.
//

import UIKit

class EntryDescriptionViewController: UIViewController {
    
    var entry: Entry?
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var messageLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        if let e = entry {
            titleLabel.text = e.title
            messageLabel.text = e.message
        }
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
