//
//  ViewController.swift
//  Dormant
//
//  Created by 叶云 on 2016/10/28.
//  Copyright © 2016年 叶云. All rights reserved.
//

import UIKit

class ViewController: UIViewController{

    @IBOutlet weak var button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        button.addTarget(self, action: #selector(click), for: UIControlEvents.touchUpInside)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func click()  {
        print("点击")
        DormantZone.addToDormantZone(dormantObj: button,dormantTimeSecond: 2)
    }


}

