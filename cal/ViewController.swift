//
//  ViewController.swift
//  cal
//
//  Created by fz on 16/3/21.
//  Copyright © 2016年 fz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    

    var point=false
    var x=0.0
    var fuhao = ""
    var value1:Double=0
    var value2:Double=0
    var jieguo:Double=0
    @IBOutlet weak var xianshi: UITextField!
    
    func dianan(fig:String)
    {
        xianshi.text! += fig
    }
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
        if xianshi.text=="0"
        {
            xianshi.text="0"
        }else
        {
            dianan("0")
        }
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
        fuhao="dec"
        value1=(xianshi.text! as NSString).doubleValue
        xianshi.text=""
        point=false
    }
    @IBAction func mul(sender: UIButton) {
        fuhao="mul"
        value1=(xianshi.text! as NSString).doubleValue
        xianshi.text=""
        point=false
    }
    @IBAction func div(sender: UIButton) {
        fuhao="div"
        value1=(xianshi.text! as NSString).doubleValue
        xianshi.text=""
        point=false
    }

    @IBAction func hun(sender: UIButton) {
        value1=(xianshi.text! as NSString).doubleValue
        jieguo=0.01*value1
        xianshi.text="\(jieguo)"
    }
    @IBAction func fuhao(sender: UIButton) {
        value1=(xianshi.text! as NSString).doubleValue
        jieguo=0-value1
        xianshi.text="\(jieguo)"
    }
   
    @IBAction func pingfang(sender: UIButton) {
        value1=(xianshi.text! as NSString).doubleValue
        jieguo=value1*value1
        xianshi.text="\(jieguo)"
    }
    @IBAction func pai(sender: UIButton) {
        xianshi.text = xianshi.text!+"3.14"
    }
    @IBAction func equ(sender: UIButton) {
        if(fuhao=="add"){
            value2=(xianshi.text! as NSString).doubleValue
            jieguo=value1+value2
            xianshi.text="\(jieguo)"
            
        }
        else if(fuhao=="dec"){
            value2=(xianshi.text! as NSString).doubleValue
            jieguo=value1-value2
            xianshi.text="\(jieguo)"
        }
        else if(fuhao=="mul"){
            value2=(xianshi.text! as NSString).doubleValue
            jieguo=value1*value2
            xianshi.text="\(jieguo)"
        }
        else if(fuhao=="div"){
            value2=(xianshi.text! as NSString).doubleValue
            if xianshi.text=="0"
            {
                xianshi.text="除数不能为0"
            }else{
                jieguo=value1/value2
                xianshi.text="\(jieguo)"
            }
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

