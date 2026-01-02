//
//  ViewController.swift
//  15_10_25_CollectionView_Demo
//
//  Created by Vishal Jagtap on 29/12/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var studentCollectionView: UICollectionView!
    let reuseIdentifierForStudentCollectionViewCell = "StudentCollectionViewCell"
    var studentNames = ["Preeti","Monali","Prajakta","Shweta","Tanishka",
                        "Sujata","Saurabh","Mayur","Rameshwar","Preeti","Monali",
                        "Prajakta","Shweta","Tanishka","Sujata"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        registerCellWIthCollectionView()
    }
    
    func registerCellWIthCollectionView(){
        studentCollectionView.dataSource = self
        studentCollectionView.delegate = self
        let uiNib = UINib(nibName: reuseIdentifierForStudentCollectionViewCell, bundle: nil)
        self.studentCollectionView.register(uiNib, forCellWithReuseIdentifier: reuseIdentifierForStudentCollectionViewCell)
    }
}


extension ViewController : UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return studentNames.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let studentCollectionViewCell = self.studentCollectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifierForStudentCollectionViewCell, for: indexPath) as? StudentCollectionViewCell
        
        studentCollectionViewCell?.studentNameLabel.text = studentNames[indexPath.item]
        return studentCollectionViewCell!
    }
}

extension ViewController : UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let viewWidth = self.view.frame.width
        let cellDimensions = viewWidth/4.0 - 20.0
        print(viewWidth)
        print(cellDimensions)
        return CGSize(width: cellDimensions, height: cellDimensions)
    }
}
