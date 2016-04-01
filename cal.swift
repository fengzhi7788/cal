 //
 //  cal.swift
 //  cal
 //
 //  Created by fz on 16/3/24.
 //  Copyright © 2016年 fz. All rights reserved.
 //
 
 import Foundation
 
 struct cal {
    private var dangqiansuanfa:suanfa = .weixuanze
    mutating func shezhidangqiansuanfa(linshi:suanfa){
        dangqiansuanfa=linshi
    }
    func duqudangqiansuan()->suanfa
    {
        return dangqiansuanfa
    }
    enum suanfa
    {
        case add
        case sub
        case mul
        case div
        case pingfang
        case zhishumi
        case weixuanze
    }
    func qiujieguo(caozuoshu caozuozhu:Double,   beicaozuoshu:Double)->String
    {
        var fanhui = ""
        switch dangqiansuanfa
        {
        case .add:
            fanhui = "\( caozuozhu + beicaozuoshu )"
        case .sub:
            fanhui = "\( caozuozhu - beicaozuoshu )"
        case .mul:
            fanhui = "\( caozuozhu * beicaozuoshu )"
        case .div where beicaozuoshu != 0:
            fanhui = "\( caozuozhu / beicaozuoshu )"
        case .pingfang:
            fanhui = ""
        case .zhishumi:
            fanhui = ""
        default:
            fanhui = "0 不能做被除数"
        }
        return fanhui
    }
    
 }