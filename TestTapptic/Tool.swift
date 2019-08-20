//
//  Tool.swift
//  TestTapptic
//
//  Created by Apptree DEV on 18/08/2019.
//  Copyright © 2019 Apptree DEV. All rights reserved.
//

import Foundation

class Tool{
    
    var id: String
    var type: ToolType
    var unitMeasure = 0
    var isRunning = true
    
    init(id: String, type: ToolType){
        self.id = id
        self.type = type
    }
}



enum ToolType: CustomStringConvertible{
    case pneumatic, hydraulic, electric
    
    var description: String {
        switch self{
            
        case .pneumatic:
            return "Pneumatic"
        case .hydraulic:
            return "Hydraulic"
        case .electric:
            return "Electric"
        }
    }
    
    var unit: String {
        switch self{
            
        case .pneumatic:
            return ""
        case .hydraulic:
            return "bar"
        case .electric:
            return "watt"
        }
    }
}

