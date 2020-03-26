//
//  EntryViewController.swift
//  garrettD_Final_Project
//
//  Created by Devin Garrett on 3/16/20.
//  Copyright © 2020 Devin Garrett. All rights reserved.
//

import UIKit
import FirebaseAuth
import Firebase
import FirebaseFirestore
import FirebaseFirestoreSwift

class EntryViewController: UIViewController {
    @IBOutlet weak var mood: UISegmentedControl!
    @IBOutlet weak var entryTextField: UITextView!
    @IBOutlet weak var titleField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func submitButtonTapped(_ sender: Any) {
        let entryMood = mood.titleForSegment(at: mood.selectedSegmentIndex)
        let entryMessage = entryTextField.text
        let title = titleField.text
        
        let userID : String = (Auth.auth().currentUser?.uid)!
        
        let db = Firestore.firestore()
        
        db.collection("entries").addDocument(data: ["entryMood": entryMood!, "entryMessage": entryMessage!, "title":title!,  "uid": userID]) { (error) in
            if ((error) != nil){
            }
            else{
            }
        }
        EntryListTableViewController.entries.append(Entry(title: title!, mood: entryMood!, message: entryMessage!))
        dismiss(animated: true, completion: nil)
    }

}
