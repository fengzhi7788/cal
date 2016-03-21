//
//  ViewController.swift
//  cal
//
//  Created by fz on 16/3/21.
//  Copyright © 2016年 fz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var x: UITextField!
    @IBOutlet weak var y: UITextField!
    @IBOutlet weak var z: UITextField!
    @IBOutlet weak var xianshi: UITextField!
    
    @IBAction func one(sender: AnyObject) {
        xianshi.text="1"
        //xianshi.textColor = [UIColor, red]
        
    }
    
    @IBAction func two(sender: UIButton) {
        xianshi.text="2"
    }
    @IBAction func three(sender: UIButton) {
        xianshi.text="3"
    }
    @IBAction func four(sender: UIButton) {
        xianshi.text="4"
    }
    @IBAction func five(sender: UIButton) {
        xianshi.text="5"
    }
    @IBAction func six(sender: UIButton) {
        xianshi.text="6"
    }
    @IBAction func seven(sender: UIButton) {
        xianshi.text="7"
    }
    @IBAction func eight(sender: UIButton) {
        xianshi.text="8"
    }
    @IBAction func nine(sender: UIButton) {
        xianshi.text="9"
    }
    @IBAction func zero(sender: UIButton) {
        xianshi.text="0"
    }
    @IBAction func AC(sender: UIButton) {
        xianshi.text="  "
    }
    @IBAction func add(sender: AnyObject) {
        var a:Double=0
        var b:Double!=0
        var c:Double=0
        /*if(!x.text!.isEmpty)
        {
        a=(x.text! as NSString).doubleValue
        }
        if(!y.text!.isEmpty)
        {
        b=(y.text! as NSString).doubleValue
        }
        if(!z.text!.isEmpty)
        {
        c=(z.text! as NSString).doubleValue
        }*/
        if(!x.text!.isEmpty)
        {
            a=(x.text! as NSString).doubleValue
        }
        if(!y.text!.isEmpty){
            b=(Double)(y.text!)
        }
        c=a+b
        z.text="\(c)"

    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

