//
//  cttVC.swift
//  AutoLayout
//
//  Created by 楊健麟 on 2017/7/16.
//  Copyright © 2017年 楊健麟. All rights reserved.
//

import UIKit

class cttVC: UIViewController {

    @IBOutlet var lbl: UILabel!
    var index:Int?
    override func viewDidLoad() {
        super.viewDidLoad()
        if let id = index{
            lbl.text = "\(id)"
        }
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
