//
//  pageVC.swift
//  AutoLayout
//
//  Created by 楊健麟 on 2017/7/16.
//  Copyright © 2017年 楊健麟. All rights reserved.
//

import UIKit

class pageVC: UIPageViewController, UIPageViewControllerDataSource {

    lazy var allVCs:[UIViewController] = {
        return [self.getCttVC(index: 0),
                self.getCttVC(index: 1),
                self.getCttVC(index: 2)]
    }() as! [UIViewController]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        dataSource = self
        
        if let firstVC = allVCs.first{
            setViewControllers([firstVC], direction: .forward, animated: true, completion: nil)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func getCttVC(index:Int) -> UIViewController?{
        let tag = index % 3
        switch tag {
        case 0:
            let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "CttVC") as?cttVC
                vc?.index = 0
                vc?.view.backgroundColor = UIColor.black
            return vc
        case 1:
            let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "CttVC") as?cttVC
                vc?.index = 1
                vc?.view.backgroundColor = UIColor.blue
            return vc
        case 2:
            let vc = cttVC()
            vc.view.backgroundColor = UIColor.brown
            return vc
        default:
            return cttVC()
        }
    }
    
    public func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        guard let index = allVCs.index(of: viewController) else {
            return nil
        }
        return allVCs[(index+allVCs.count-1)%allVCs.count]
    }
    
    public func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        
        guard let index = allVCs.index(of: viewController) else {
            return nil
        }
        return allVCs[(index+allVCs.count+1)%allVCs.count]
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
