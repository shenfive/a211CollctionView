//
//  ImageViewController.swift
//  a211CollctionView
//
//  Created by 申潤五 on 2020/12/5.
//

import UIKit

class ImageViewController: UIViewController {

    @IBOutlet weak var bigImageView: UIImageView!
    var image:UIImage? = nil
    
    
    var callBackFunction:(()->())? = nil

    
    override func viewDidLoad() {
        super.viewDidLoad()
//        self.view.backgroundColor = UIColor.clear
        bigImageView.image = self.image
       
    }
    
    @IBAction func close(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    @IBAction func someThing(_ sender: Any) {
        callBackFunction?()
    }
    
    
}
