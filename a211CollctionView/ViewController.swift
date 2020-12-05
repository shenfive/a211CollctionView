//
//  ViewController.swift
//  a211CollctionView
//
//  Created by 申潤五 on 2020/12/5.
//

import UIKit

class ViewController: UIViewController,UICollectionViewDataSource {


    @IBOutlet weak var myCollectionView: UICollectionView!
    var images:[UIImage?] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        images = [ UIImage(named: "image1"),
                   UIImage(named: "image2"),
                   UIImage(named: "image3"),
                   UIImage(named: "image4"),
                   UIImage(named: "image5")
        ]
        myCollectionView.dataSource = self
    }

    
    //MARK: UIColltionView DataSource
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return images.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "myCell", for: indexPath)
                    as! MyCollectionViewCell 
        cell.theImageView.image = images[indexPath.row]
        return cell
    }
    
}

