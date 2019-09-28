//
//  ListTableViewController.swift
//  accelerometron
//
//  Created by Dante on 2019/9/27.
//  Copyright © 2019 cinderella. All rights reserved.
//

import UIKit
import CoreMotion

class MyViewController: UITableViewController {

    var motionManager:CMMotionManager!
    
    override func viewDidLoad() {
        super.viewDidLoad()
   
        tableView.delegate=self
        tableView.dataSource=self
        
        motionManager=CMMotionManager()
        motionManager.startAccelerometerUpdates(to: .main, withHandler:updateXYZ)
        
    }

    func updateXYZ(data:CMAccelerometerData?,error:Error?){
        guard let accelerometerData=data else {return}
        
        let formatter=NumberFormatter()
        formatter.minimumFractionDigits=1
        formatter.maximumFractionDigits=1
        
        let x = formatter.string(for:accelerometerData.acceleration.x)!
        let y = formatter.string(for:accelerometerData.acceleration.y)!
        let z = formatter.string(for:accelerometerData.acceleration.z)!
        
        print("\(x) \(y) \(z)")
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return imageArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "pc",for:indexPath) as? ParallaxCell
            else {return UITableViewCell()}
        
        cell.configureCell(withImage:imageArray[indexPath.row],andDescription: nameArray[indexPath.row])
        return cell
    }
    
}
