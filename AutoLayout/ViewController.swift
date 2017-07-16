//
//  ViewController.swift
//  AutoLayout
//
//  Created by 楊健麟 on 2017/7/12.
//  Copyright © 2017年 楊健麟. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var contTop: NSLayoutConstraint!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func zero(_ sender: UIButton) {
        contTop.constant = 0
    }
    
    @IBAction func btnClick(_ sender: UIButton) {
        contTop.constant += 10
    }

}

