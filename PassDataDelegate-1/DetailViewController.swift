//
//  DetailViewController.swift
//  PassDataDelegate-1
//
//  Created by trung on 2018/08/13.
//  Copyright © 2018 trung. All rights reserved.
//

import UIKit
protocol DelegateDetail {
    func passDelegate(passData: String)
}


class DetailViewController: UIViewController {
    
    @IBOutlet weak var textFieldDetail: UITextField!
    var dataTake: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if dataTake != nil {
            textFieldDetail.text = dataTake
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    
    var delegate : DelegateDetail?
    @IBAction func delegateToViewController(_ sender: Any) {
        delegate?.passDelegate(passData: textFieldDetail.text!)

        dismiss(animated: true, completion: nil)
    }
    


}
