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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bigImageView.image = self.image
       
    }
}
