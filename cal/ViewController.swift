//
//  ViewController.swift
//  cal
//
//  Created by fz on 16/3/21.
//  Copyright © 2016年 fz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var date = NSDate()
    var timeFormatter = NSDateFormatter()
    //timeFormatter.dateFormat = "yyy-MM-dd 'at' HH:mm:ss.SSS"
    //var strNowTime = timeFormatter.stringFromDate(date) as String
    var dianjishu = 0
    func dianan(fig:String)
    {
        xianshi.text! += fig
        //xianshi.text = xianshihuancun
    }


    var fuhao = ""
    var value1:Double=0
    var value2:Double=0
    var jieguo:Double=0
    @IBOutlet weak var xianshi: UITextField!
    
    @IBAction func one(sender: AnyObject) {
        //xianshi.text="1"
        //xianshi.textColor = [UIColor, red]
        dianan("1")
        
    }
    
    @IBAction func two(sender: UIButton) {
        dianan("2")
        //xianshi.text="2"
    }
    @IBAction func three(sender: UIButton) {
        dianan("3")
        //xianshi.text="3"
    }
    @IBAction func four(sender: UIButton) {
        dianan("4")
        //xianshi.text="4"
    }
    @IBAction func five(sender: UIButton) {
        dianan("5")
        //xianshi.text="5"
    }
    @IBAction func six(sender: UIButton) {
        dianan("6")
        //xianshi.text="6"
    }
    @IBAction func seven(sender: UIButton) {
        dianan("7")
        //xianshi.text="7"
    }
    @IBAction func eight(sender: UIButton) {
        dianan("8")
        //xianshi.text="8"
    }
    @IBAction func nine(sender: UIButton) {
        dianan("9")
        //xianshi.text="9"
    }
    @IBAction func zero(sender: UIButton) {
        dianan("0")
        //xianshi.text="0"
    }
    @IBAction func point(sender: UIButton) {
        
        dianan(".")
    }
    @IBAction func add(sender: UIButton) {
        fuhao="add"
        value1=(xianshi.text! as NSString).doubleValue
        xianshi.text=""
    }

    @IBAction func dec(sender: UIButton) {
        fuhao="jian"
        value1=(xianshi.text! as NSString).doubleValue
        xianshi.text=""
    }
    @IBAction func mul(sender: UIButton) {
        fuhao="cheng"
        value1=(xianshi.text! as NSString).doubleValue
        xianshi.text=""
    }
    @IBAction func div(sender: UIButton) {
        fuhao="chu"
        value1=(xianshi.text! as NSString).doubleValue
        xianshi.text=""
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

