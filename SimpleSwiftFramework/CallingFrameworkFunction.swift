//
//  CallingFrameworkFunction.swift
//  SimpleSwiftFramework
//
//  Created by Thanaphat Suwannikornkul on 16/02/62 BE.
//  Copyright © 2562 AppMan. All rights reserved.
//

import Foundation
import UIKit

public class CallingFrameworkFunction: NSObject {
    public static func alert(message: String) {
        let alertController = UIAlertController(title: "Alert from Framework", message: "Your message is \"\(message)\"", preferredStyle: .alert)
        let action1 = UIAlertAction(title: "OK", style: .default) { (action:UIAlertAction) in
            //
        }
        alertController.addAction(action1)
        
        // -----
        
        var topController = UIApplication.shared.keyWindow!.rootViewController as! UIViewController
        
        while ((topController.presentedViewController) != nil) {
            topController = topController.presentedViewController!;
        }
        topController.present(alertController, animated:true, completion:nil)
    }
}
