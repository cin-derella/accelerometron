//
//  ParallaxCell.swift
//  accelerometron
//
//  Created by Dante on 2019/9/27.
//  Copyright © 2019 cinderella. All rights reserved.
//

import UIKit

@IBDesignable
class ParallaxCell: UITableViewCell {

    @IBOutlet weak var imageViewX: UIImageView!    
    @IBOutlet weak var descrpitionLable: UILabel!
    
    
    override func awakeFromNib() {
   
        super.awakeFromNib()
        //set up paralax code later
    }

    func configureCell(withImage image:UIImage,andDescription desc:String){
        imageViewX.image = image
        descrpitionLable.text = desc
    }
    
    func setupParallax(){
    }


}
