//
//  BaseViewController.swift
//  InvioAPI
//
//  Created by irem TOSUN on 3.06.2022.
//

import Foundation
import UIKit

class BaseViewController: UIViewController{
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        view.backgroundColor = Colors.vBackground
    }
    func showAlert(title: String, message: String){
        let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
}
