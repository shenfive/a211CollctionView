//
//  ViewController.swift
//  a211CollctionView
//
//  Created by 申潤五 on 2020/12/5.
//

import UIKit

class ViewController: UIViewController,UICollectionViewDataSource {


    @IBOutlet weak var myCollectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        myCollectionView.dataSource = self
    }

    
    //MARK: UIColltionView DataSource
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "myCell", for: indexPath)
        cell.backgroundColor = UIColor.red
        return cell
    }
    
}

