//
//  StudentDetailsViewController.swift
//  15_10_25_CollectionView_Demo
//
//  Created by Vishal Jagtap on 02/01/26.
//

import UIKit

class StudentDetailsViewController: UIViewController {
    
    @IBOutlet weak var studentNameLabel: UILabel!
    var studentNameContainer : String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.studentNameLabel.text = studentNameContainer
    }
}
