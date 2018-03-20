//
//  Wage.swift
//  FULL FIRST
//
//  Created by Shreyash Sharma on 19/03/18.
//  Copyright © 2018 Shreyash Sharma. All rights reserved.
//

import Foundation
class Wage {
    class func getHours (forWage wage: Double , andPrice price : Double)->Int
    { if wage != 0 {
        return Int(ceil(price/wage))
        }
    else {
        return 0;
        }
    }
}
 
