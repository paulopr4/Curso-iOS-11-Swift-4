//
//  UIViewController + TaxCalculator.swift
//  Sc06_App_ComprasUSA_v2
//
//  Created by paulopr4 on 26/07/19.
//  Copyright © 2019 paulopr4. All rights reserved.
//

import Foundation
import  UIKit

extension UIViewController {
    var tc: TaxesCalculator {
        return TaxesCalculator.shared
    }
}
