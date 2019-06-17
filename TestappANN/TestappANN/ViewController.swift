//
//  ViewController.swift
//  TestappANN
//
//  Created by ZemoF on 5/22/19.
//  Copyright © 2019 Zemo Fagan. All rights reserved.
//

import UIKit
var myPassedInfo:[Int]=[0,0,0]
var send:String=""
class ViewController: UIViewController {
    @IBOutlet weak var txtIterations: UITextField!

    @IBOutlet weak var txtGridtype: UILabel!
    @IBOutlet weak var TXTRAND: UITextField!
    
    @IBOutlet weak var txtGridTypeTrue: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btnPass(_ sender: Any) {
        if let _ = Int(txtIterations.text!) {
            myPassedInfo[0]=Int(txtIterations.text!)!
        }else{
            myPassedInfo[0]=50
        }
        if let _ = Int(TXTRAND.text!) {
            myPassedInfo[1]=Int(TXTRAND.text!)!
        }
        send=txtGridTypeTrue.text!
        switch txtGridTypeTrue.text! {
        case "cliff1":
            myPassedInfo[2]=0
        case "cliff2":
         myPassedInfo[2]=1
        case "bridge":
             myPassedInfo[2]=3
        case "book":
             myPassedInfo[2]=4
        case "maze":
             myPassedInfo[2]=5
        default:
             myPassedInfo[2]=0
        }
        
    }
   
}

