//
//  SCViewController.swift
//  PageControl
//
//  Created by Ngoduc on 5/8/20.
//  Copyright © 2020 Ngoduc. All rights reserved.
//

import UIKit

class SCViewController: UIViewController {
    let screenW = UIScreen.main.bounds.width
    let screenH = UIScreen.main.bounds.height
var views = [CustomerView]()
    @IBOutlet weak var scrollView1: UIScrollView!
    override func viewDidLoad() {
        super.viewDidLoad()
        scrollView1.contentSize = CGSize(width: 1000, height: 2000)
        setCustomView()
       setupConten1(views)
    }
    
    func setCustomView(){
        let data1 = Bundle.main.loadNibNamed("CustomerView", owner: self, options: nil)?.first as! CustomerView
        data1.imageView.image = UIImage(named: "a1")
        data1.nameLable.text = "animal1"
        
         let data2 = Bundle.main.loadNibNamed("CustomerView", owner: self, options: nil)?.first as! CustomerView
               data2.imageView.image = UIImage(named: "a2")
               data2.nameLable.text = "animal2"
         let data3 = Bundle.main.loadNibNamed("CustomerView", owner: self, options: nil)?.first as! CustomerView
               data3.imageView.image = UIImage(named: "a3")
               data3.nameLable.text = "animal3"
        
        views.append(data1)
         views.append(data2)
         views.append(data3)
    }
  
    func setupConten1(_ arr: [CustomerView]){
     for (index,item) in arr.enumerated() {
         item.frame = CGRect(x: screenW * CGFloat(index), y: 0 , width: screenW, height: screenW)
            
            scrollView1.addSubview(item)
            
        }
        scrollView1.contentSize = CGSize(width: screenW * CGFloat(arr.count), height: screenH)
    }
}
