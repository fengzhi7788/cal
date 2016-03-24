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
        case cal
        case cheng
        case chu
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
        case .cal:
            fanhui = "\( caozuozhu - beicaozuoshu )"
        case .cheng:
            fanhui = "\( caozuozhu * beicaozuoshu )"
        case .chu where beicaozuoshu != 0:
            fanhui = "\( caozuozhu / beicaozuoshu )"
        case .pingfang:
            fanhui = ""
        case .zhishumi:
            fanhui = ""
        default:
            fanhui = "0 不能做被除数"
        }
    }
    
}