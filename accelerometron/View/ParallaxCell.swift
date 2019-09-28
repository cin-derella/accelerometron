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
        setupParallax()
    }

    func configureCell(withImage image:UIImage,andDescription desc:String){
        imageViewX.image = image
        descrpitionLable.text = desc
    }
    
    func setupParallax(){
        
        let min = CGFloat(-30)
        let max = CGFloat(30)
        
        let xMotion = UIInterpolatingMotionEffect(keyPath: "layer.transform.translation.x", type: .tiltAlongHorizontalAxis)
        xMotion.minimumRelativeValue=min
        xMotion.maximumRelativeValue=max
        
        
        let yMotion = UIInterpolatingMotionEffect(keyPath: "layer.transform.translation.y", type: .tiltAlongVerticalAxis)
        yMotion.minimumRelativeValue=min
        yMotion.maximumRelativeValue=max
        
        
        let motionEffectGroup = UIMotionEffectGroup()
        motionEffectGroup.motionEffects = [xMotion,yMotion]
        
        print("\(xMotion)")
        
        imageViewX.addMotionEffect(motionEffectGroup)
        
    }
}
