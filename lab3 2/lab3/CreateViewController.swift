//
//  lab3Tests.swift
//  lab3Tests
//
//  Created by Nurgissa on 3/7/20.
//  Copyright © 2020 Nurgissa. All rights reserved.
//

import UIKit

class CreateViewController: UIViewController {
    
    @IBOutlet weak var widthText: UITextField!
    @IBOutlet weak var heightText: UITextField!
    @IBOutlet weak var xcordText: UITextField!
    @IBOutlet weak var ycordText: UITextField!
    
    @IBOutlet var colorOfButtons: [UIButton]!
     var choosecolor:UIColor!
    
    @IBAction func colorDetect(_ sender: UIButton) {
        
        colorOfButtons.forEach{(button) in
            if button == sender{
                button.isSelected=true
            }
            else{
                button.isSelected=false
            }
        }
        guard let btncolor = sender.backgroundColor else {return}
         choosecolor = btncolor
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
     

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
