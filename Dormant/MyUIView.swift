//
//  MyUIView.swift
//  Dormant
//
//  Created by 叶云 on 2016/10/28.
//  Copyright © 2016年 叶云. All rights reserved.
//

import Foundation
import UIKit

extension UIView : DormantDelegate{
   

    internal var isWakeUp: Bool {
        get {
            return self.isUserInteractionEnabled
        }
        set {
           self.isUserInteractionEnabled = newValue
        }
    }


    
    func startDormant(dormantObj: DormantDelegate) {
        self.isUserInteractionEnabled = false
        
    }
    
    func stopDormant(dormantObj: DormantDelegate) {
        self.isUserInteractionEnabled = true
    }
    
    internal func perSecond(dormantObj: DormantDelegate) {
        
    }

}
