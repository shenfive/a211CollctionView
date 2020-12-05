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
        
        let screenSize = UIScreen.main.bounds.size
        let layout = UICollectionViewFlowLayout()
        // 設置 section 的間距 四個數值分別代表 上、左、下、右 的間距
        layout.sectionInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        // 設置每一行的間距
        layout.minimumLineSpacing = 10
        // 設置每個 cell 的尺寸
        layout.itemSize = CGSize(width: (screenSize.width / 3 - 10), height: screenSize.width / 3 - 10 )

        myCollectionView.setCollectionViewLayout(layout, animated: true)
        
        
    }

    
    
    @IBAction func segAction(_ sender: UISegmentedControl) {
        var itemNumberInCell:CGFloat = 3
        
        switch sender.selectedSegmentIndex {
        case 0:
            itemNumberInCell = 3
        case 1:
            itemNumberInCell = 4
        case 2:
            itemNumberInCell = 5
        default:
            break
        }
        
        
        
        
        let screenSize = UIScreen.main.bounds.size
        let layout = UICollectionViewFlowLayout()
        // 設置 section 的間距 四個數值分別代表 上、左、下、右 的間距
        layout.sectionInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        // 設置每一行的間距
        layout.minimumLineSpacing = 10
        // 設置每個 cell 的尺寸
        layout.itemSize = CGSize(width: (screenSize.width / itemNumberInCell - 10), height: screenSize.width / itemNumberInCell - 10 )

        myCollectionView.setCollectionViewLayout(layout, animated: true)
        
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

