import UIKit

class ViewController: UIViewController {
        let model = Calculator()
 
    @IBOutlet weak var answer: UILabel!
    
    @IBAction func numbers(_ sender: UIButton) {
             
      guard
      
        let numberText = sender.titleLabel?.text
        
             else
      {
        return
      }
    
             answer.text?.append(numberText)
 
       
    }
 
    @IBAction func actions(_ sender: UIButton) {
      
        
 
        if sender.tag == 10
        {
            answer.text = ""
            model.ac()
        }
      
    
       guard
           let numberText =  answer.text,
           let number = Double(numberText),
           let operation = sender.titleLabel?.text
     
       
       else
       {
        return
       }
     
      answer.text = ""
   
       model.setOperand(number: number)
            
       model.executeOperation(symbol: operation)
   
       
      if(checkingForUnary(btn_operation: operation)){
        answer.text = String(model.result)
      }
        
    }

    func checkingForUnary(btn_operation: String) -> Bool
    {
        if(btn_operation != "/" && btn_operation != "*" && btn_operation != "+" && btn_operation != "x^y" && btn_operation != "-")
    {
        return true
    }
        return false
    }

    
       override func viewDidLoad() {
        // Design making circle buttons
   
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

}


