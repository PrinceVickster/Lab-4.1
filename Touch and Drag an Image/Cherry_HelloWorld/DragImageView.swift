//
//  DragImageView.swift
//  Cherry_HelloWorld
//
//  Created by Xianhui Che on 12/07/2019.
//  Copyright © 2019 Xianhui Che. All rights reserved.
//

import UIKit

class DragImageView: UIImageView {

    var startLocation: CGPoint?
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        startLocation = touches.first?.location(in: self)
    }
    
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        let currentLocation = touches.first?.location(in: self)
        
        let dx = currentLocation!.x - startLocation!.x
        let dy = currentLocation!.y - startLocation!.y
        let newCenter = CGPoint(x: self.center.x+dx, y: self.center.y+dy)
        
        self.center = newCenter
    }
    
    

}
