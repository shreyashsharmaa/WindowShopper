//
//  ViewController.swift
//  FULL FIRST
//
//  Created by Shreyash Sharma on 18/03/18.
//  Copyright © 2018 Shreyash Sharma. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet weak var wageTxt: CurrencyTextField!
    
    @IBOutlet weak var priceTxt: CurrencyTextField!
    
    
    @IBOutlet weak var resultLbl: UILabel!
    
    @IBOutlet weak var hourLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
         let calcBtn = UIButton(frame: CGRect(x: 0, y: 0
            , width: view.frame.size.width , height: 60))
        calcBtn.backgroundColor  = #colorLiteral(red: 0.9411764741, green: 0.4980392158, blue: 0.3529411852, alpha: 1)
        calcBtn.setTitle("Calculate", for: .normal)
        calcBtn.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        calcBtn.addTarget(self, action: #selector(MainViewController.calculate ) , for: .touchUpInside )
        
        wageTxt.inputAccessoryView = calcBtn
        priceTxt.inputAccessoryView = calcBtn
        
        resultLbl.isHidden = true
        hourLbl.isHidden = true
    }
    @objc func calculate ()
 { 
     if let wageTxt = wageTxt.text ,let priceTxt = priceTxt.text
     {
        if let wage = Double(wageTxt) , let price = Double(priceTxt){
           view.endEditing(true)
            resultLbl.isHidden = false
            hourLbl.isHidden = false
            if  wage == 0
            {
                resultLbl.text = "GO TO WORK!"
                hourLbl.isHidden = true
            }
            else
                if wage < price {
             resultLbl.text = "\(Wage.getHours(forWage: wage , andPrice: price ))"
            }
            else if wage==price || wage>price
            {
                resultLbl.text = "\(Wage.getHours(forWage: wage , andPrice: price ))"
                hourLbl.text = "Hour"
            }
        }
    }
    }
    
    
    @IBAction func clearCalculatorPressed(_ sender: Any) {
        resultLbl.isHidden = true
        hourLbl.isHidden = true
        wageTxt.text = ""
        priceTxt.text = ""
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

