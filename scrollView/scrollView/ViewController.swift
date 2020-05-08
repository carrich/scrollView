//
//  ViewController.swift
//  scrollView
//
//  Created by Ngoduc on 5/6/20.
//  Copyright © 2020 Ngoduc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
   
   
   
    
    let screenW = UIScreen.main.bounds.width
     let screenH = UIScreen.main.bounds.height/6
    var views = [customView]()
    var views2 = [customView]()
    
    @IBOutlet weak var scroolView2: UIScrollView!
    @IBOutlet weak var scrollView: UIScrollView!
    override func viewDidLoad() {
        super.viewDidLoad()
        scrollView.backgroundColor = .white
        scrollView.contentSize = CGSize(width: 1000, height: 2000)
        scrollView.showsHorizontalScrollIndicator = false
        scrollView.bounces = false
        setCustomView()
        setupConten1(views)
        setCustomView2()
        setupConten2(views2)
    }
    func setCustomView(){
        let data1 = Bundle.main.loadNibNamed("customView", owner: self, options: nil)?.first as! customView
        data1.imageView.image = UIImage(named: "a1")
        data1.nameLable.text = "animal1"
        
        let data2 = Bundle.main.loadNibNamed("customView", owner: self, options: nil)?.first as! customView
               data2.imageView.image = UIImage(named: "a2")
               data2.nameLable.text = "aanimal2"
        let data3 = Bundle.main.loadNibNamed("customView", owner: self, options: nil)?.first as! customView
               data3.imageView.image = UIImage(named: "a3")
               data3.nameLable.text = "animal3"
        
        views.append(data1)
         views.append(data2)
         views.append(data3)
    }
    func setCustomView2(){
           let data1f = Bundle.main.loadNibNamed("customView", owner: self, options: nil)?.first as! customView
           data1f.imageView.image = UIImage(named: "f1")
             data1f.nameLable.text = "fruit1"
           
         let data2f = Bundle.main.loadNibNamed("customView", owner: self, options: nil)?.first as! customView
           data2f.imageView.image = UIImage(named: "f2")
             data2f.nameLable.text = "fruit2"
          let data3f = Bundle.main.loadNibNamed("customView", owner: self, options: nil)?.first as! customView
           data3f.imageView.image = UIImage(named: "f3")
             data3f.nameLable.text = "fruit3"
           views2.append(data1f)
            views2.append(data2f)
        views2.append(data3f)
       }
  
    
    func setupConten1(_ arr: [customView]){
        for (index,item) in arr.enumerated() {
            item.frame = CGRect(x: screenW * CGFloat(index), y: 0 , width: screenW, height: screenH)
               
               scrollView.addSubview(item)
               
           }
           scrollView.contentSize = CGSize(width: screenW * CGFloat(arr.count), height: screenH)
       }
    func setupConten2(_ arr: [customView]){
     for (index,item) in arr.enumerated() {
        item.frame = CGRect(x: scroolView2.frame.minX, y: (screenH + 200) * CGFloat(index) , width: screenW, height: screenH)
            
            scroolView2.addSubview(item)
            
        }
        scroolView2.contentSize = CGSize(width: screenW , height: screenH * 15)
    }
}

