//
//  ViewController.swift
//  PassDataDelegate-1
//
//  Created by trung on 2018/08/13.
//  Copyright © 2018 trung. All rights reserved.
//

import UIKit

class ViewController: UIViewController, DelegateDetail {
    func passDelegate(passData: String) {
        textFieldViewController.text = passData
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    
    @IBOutlet weak var textFieldViewController: UITextField!
    
    @IBAction func segueToDetail(_ sender: Any) {
        performSegue(withIdentifier: "pass", sender: nil)
        
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let toDetail = segue.destination as? DetailViewController
        toDetail?.dataTake = textFieldViewController.text
        toDetail?.delegate = self
    }
    
    

}

