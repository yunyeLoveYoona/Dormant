//
//  DormantZone.swift
//  Dormant
//
//  Created by 叶云 on 2016/10/28.
//  Copyright © 2016年 叶云. All rights reserved.
//

import Foundation
import UIKit
class DormantZone{
    
    static func addToDormantZone(dormantObj : DormantDelegate,dormantTimeSecond : Int){
        dormantObj.startDormant(dormantObj: dormantObj)
        for second in 0...dormantTimeSecond{
            let delay = DispatchTime.now() + .seconds(1)
            DispatchQueue.global().asyncAfter(deadline: delay) {
                if(second == dormantTimeSecond - 1){
                    dormantObj.stopDormant(dormantObj: dormantObj)
                }else{
                    dormantObj.perSecond(dormantObj: dormantObj)
                }
                
            }
        }
        
    }
    
    static func addToDormantZone(dormantObj : DormantDelegate,dormantTime : Int){
        dormantObj.startDormant(dormantObj: dormantObj)
        let delay = DispatchTime.now() + .seconds(dormantTime)
        DispatchQueue.global().asyncAfter(deadline: delay) {
                    dormantObj.stopDormant(dormantObj: dormantObj)
                
        }
        
    }
    
    
    static func addToDormantZone(dormantObj : DormantDelegate){
        dormantObj.startDormant(dormantObj: dormantObj)
        DispatchQueue.global().async { 
            while !dormantObj.isWakeUp{
                
            }
            dormantObj.stopDormant(dormantObj: dormantObj)
        }
    }
    
}

protocol  DormantDelegate{
    var isWakeUp: Bool {
        get
        set
    }
    
    //开始休眠
    func startDormant(dormantObj : DormantDelegate)
    
    //结束休眠
    func stopDormant(dormantObj : DormantDelegate)
    
    //休眠中度过1秒
    func perSecond(dormantObj : DormantDelegate)
}

