//
//  HomeViewController.swift
//  garrettD_Final_Project
//
//  Created by Devin Garrett on 3/15/20.
//  Copyright © 2020 Devin Garrett. All rights reserved.
//

import UIKit
import FirebaseAuth
import Firebase
import FirebaseFirestore
import FirebaseFirestoreSwift

class HomeViewController: UIViewController {
    
    @IBOutlet weak var helloLabel: UILabel!
    @IBOutlet weak var makeAnEntry: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUpElements()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        let docRef = Firestore.firestore().collection("users").whereField("uid", isEqualTo: Auth.auth().currentUser?.uid ?? "")

        // Get data
        docRef.getDocuments { (querySnapshot, err) in
            if let err = err {
                print(err.localizedDescription)
                return
            } else if querySnapshot!.documents.count != 1 {
                print("More than one documents or none")
            } else {
                let document = querySnapshot!.documents.first
                let dataDescription = document?.data()
                guard let firstname = dataDescription?["firstname"] else { return }
                self.helloLabel.text = "Hello \(firstname)"
            }
        }
    }
    
    func setUpElements() {
        
        Utilities.styleFilledButton(makeAnEntry)
        
    }
    
    @IBAction func buttonTapped(_ sender: Any) {
    }
}
