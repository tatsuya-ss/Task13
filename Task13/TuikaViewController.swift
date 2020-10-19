//
//  TuikaViewController.swift
//  Task13
//
//  Created by 坂本龍哉 on 2020/10/19.
//

import UIKit

class TuikaViewController: UIViewController {

    @IBOutlet private weak var saveButton: UIBarButtonItem!
    @IBOutlet private weak var addTextField: UITextField!
    var addName :String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func saveAction(_ sender: Any) {
        addName = addTextField.text
        performSegue(withIdentifier: "exit", sender: sender)
    }
}
