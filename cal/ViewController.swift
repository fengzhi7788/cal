//
//  ViewController.swift
//  cal
//
//  Created by fz on 16/3/21.
//  Copyright © 2016年 fz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    func dianan(fig:String)
    {
        
        xianshi.text! += fig
    }

    var point=false
    var fuhao = ""
    var value1:Double=0
    var value2:Double=0
    var jieguo:Double=0
    @IBOutlet weak var xianshi: UITextField!
    
    @IBAction func one(sender: AnyObject) {
       
        dianan("1")
        
    }
    
    @IBAction func two(sender: UIButton) {
        dianan("2")
        
    }
    @IBAction func three(sender: UIButton) {
        dianan("3")
       
    }
    @IBAction func four(sender: UIButton) {
        dianan("4")
        
    }
    @IBAction func five(sender: UIButton) {
        dianan("5")
        
    }
    @IBAction func six(sender: UIButton) {
        dianan("6")
        
    }
    @IBAction func seven(sender: UIButton) {
        dianan("7")
     
    }
    @IBAction func eight(sender: UIButton) {
        dianan("8")
       
    }
    @IBAction func nine(sender: UIButton) {
        dianan("9")
   
    }
    @IBAction func zero(sender: UIButton) {
        dianan("0")
    
    }
    @IBAction func point(sender: UIButton) {
        if xianshi.text==""
        {
            xianshi.text=xianshi.text!+""
        }
        else if !point{
            xianshi.text = xianshi.text!+"."
            point=true
        }
    }
    @IBAction func add(sender: UIButton) {
        fuhao="add"
        value1=(xianshi.text! as NSString).doubleValue
        xianshi.text=""
        point=false
    }

    @IBAction func dec(sender: UIButton) {
        fuhao="jian"
        value1=(xianshi.text! as NSString).doubleValue
        xianshi.text=""
        point=false
    }
    @IBAction func mul(sender: UIButton) {
        fuhao="cheng"
        value1=(xianshi.text! as NSString).doubleValue
        xianshi.text=""
        point=false
    }
    @IBAction func div(sender: UIButton) {
        fuhao="chu"
        value1=(xianshi.text! as NSString).doubleValue
        xianshi.text=""
        point=false
    }

    @IBAction func equ(sender: UIButton) {
        if(fuhao=="add"){
            value2=(xianshi.text! as NSString).doubleValue
            jieguo=value1+value2
            xianshi.text="\(jieguo)"
            
        }
        else if(fuhao=="jian"){
            value2=(xianshi.text! as NSString).doubleValue
            jieguo=value1-value2
            xianshi.text="\(jieguo)"
        }
        else if(fuhao=="cheng"){
            value2=(xianshi.text! as NSString).doubleValue
            jieguo=value1*value2
            xianshi.text="\(jieguo)"
        }
        else if(fuhao=="chu"){
            value2=(xianshi.text! as NSString).doubleValue
            jieguo=value1/value2
            xianshi.text="\(jieguo)"
        }
    }
    @IBAction func c(sender: UIButton) {
        xianshi.text=""
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

