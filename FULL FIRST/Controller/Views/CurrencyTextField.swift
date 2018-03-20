//
//  CurrencyTextField.swift
//  FULL FIRST
//
//  Created by Shreyash Sharma on 19/03/18.
//  Copyright © 2018 Shreyash Sharma. All rights reserved.
//

import UIKit
@IBDesignable
class CurrencyTextField: UITextField {

    override func draw(_ rect: CGRect) {
        let size : CGFloat = 20
        let currencyLbl = UILabel(frame : CGRect(x: 5, y: (frame.size.height/2) - size/2 , width: size, height: size))
        currencyLbl.backgroundColor = #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 0.3616857394)
        currencyLbl.textAlignment = .center
        currencyLbl.layer.cornerRadius = 5.0
        currencyLbl.clipsToBounds = true
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.locale = .current
        currencyLbl.text = formatter.currencySymbol
        addSubview(currencyLbl)
    }
    
    
    
    override func prepareForInterfaceBuilder() {
        customizeView()
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
       customizeView()
    }
    
    func customizeView()
    {
        backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.2491472271)
        layer.cornerRadius = 5.0
        textAlignment = .center
        if placeholder == nil
        {
            placeholder = " "
            
        }
        if let p = placeholder
        {
            
            let place = NSAttributedString(string: p, attributes:[.foregroundColor: UIColor.white])
            
            attributedPlaceholder = place
            textColor = UIColor.white
        }
    }
    
    
    
    
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
