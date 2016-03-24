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
        xianshihuancun += fig
        xianshi.text = xianshihuancun
    }
    var jisuanqi = cal()
    func qiuzhi()
    {
    }
    var xianshihuancun = ""

    @IBOutlet weak var x: UITextField!
    @IBOutlet weak var y: UITextField!
    @IBOutlet weak var z: UITextField!
    @IBOutlet weak var xianshi: UITextField!
    
    @IBAction func one(sender: AnyObject) {
        xianshi.text="1"
        //xianshi.textColor = [UIColor, red]
        dianan("1")
        
    }
    
    @IBAction func two(sender: UIButton) {
        dianan("2")
        xianshi.text="2"
    }
    @IBAction func three(sender: UIButton) {
        dianan("3")
        xianshi.text="3"
    }
    @IBAction func four(sender: UIButton) {
        dianan("4")
        xianshi.text="4"
    }
    @IBAction func five(sender: UIButton) {
        dianan("5")
        xianshi.text="5"
    }
    @IBAction func six(sender: UIButton) {
        dianan("6")
        xianshi.text="6"
    }
    @IBAction func seven(sender: UIButton) {
        dianan("7")
        xianshi.text="7"
    }
    @IBAction func eight(sender: UIButton) {
        dianan("8")
        xianshi.text="8"
    }
    @IBAction func nine(sender: UIButton) {
        dianan("9")
        xianshi.text="9"
    }
    @IBAction func zero(sender: UIButton) {
        dianan("0")
        xianshi.text="0"
    }
    @IBAction func AC(sender: UIButton) {
        xianshi.text="  "
    }
    @IBAction func jian(sender: UIButton) {
    }
    @IBAction func add(sender: AnyObject) {
        jisuanqi.shezhidangqiansuanfa(.add)
        qiuzhi()
        
    }
    @IBAction func dec(sender: UIButton) {
        jisuanqi.shezhidangqiansuanfa(.cal)
        qiuzhi()
    }
    @IBAction func cheng(sender: UIButton) {
        jisuanqi.shezhidangqiansuanfa(.cheng)
        qiuzhi()
    }
    @IBAction func chu(sender: UIButton) {
        jisuanqi.shezhidangqiansuanfa(.chu)
        qiuzhi()
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

