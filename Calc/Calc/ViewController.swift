//
//  ViewController.swift
//  Calc
//
//  Created by Nurgissa on 1/18/20.
//  Copyright © 2020 Nurgissa. All rights reserved.
//

import UIKit
var a:Int = 0
var b:Int = 0
  var first :Int = 0
  var second:Int = 0

class ViewController: UIViewController {
 
    
    override func viewDidLoad() {
     
        super.viewDidLoad()
  
        // Do any additional setup after loading the view.
    }

    @IBAction func plus(_ sender: Any) {
       first=a
        second=b
    }
    @IBOutlet weak var label: UILabel!
    @IBAction func equal(_ sender: Any) {
        label.text=String(first+second)
    }
    
    @IBAction func num(_ sender: UIButton) {
        label.text = String(sender.tag)
        a = sender.tag
        b=sender.tag
    }
    
    

}
