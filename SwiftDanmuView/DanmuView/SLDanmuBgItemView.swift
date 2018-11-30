//
//  SLDanmuBgItemView.swift
//  SwiftDanmuView
//
//  Created by liusilan on 2017/4/19.
//  Copyright © 2017年 silan. All rights reserved.
//

import Foundation
import UIKit

/// 有背景
class SLDanmuBgItemView: SLDanmuItemView {
    
    typealias T = SLBgDanmuInfo
    
    lazy var bgView: UIView = {
        var bgView = UIView()
        
        bgView.backgroundColor = ZXHDanmBGColor
        bgView.layer.cornerRadius = SLDanmuItemView.defaultHeight / 2
        bgView.clipsToBounds = true
        
        return bgView
    }()

    lazy var imgIcon: UIImageView = {
        let img = UIImageView()
        img.frame = CGRect(x: -25, y: 0, width: 50, height: SLDanmuItemView.defaultHeight)
        img.backgroundColor = .clear
        img.contentMode = .scaleAspectFit
        img.image = UIImage(named: "tanchujn1")
        return img
    }()
    
    override func commonInit() {
        super.commonInit()
        self.insertSubview(bgView, belowSubview: label)
        self.insertSubview(imgIcon, belowSubview: label)
    }
    
    override func sizeToFit() {
        super.sizeToFit()
        bgView.frame = self.bounds
    }
    
   
    override func updateDanmuInfo(info: SLDanmuInfo) {
        super.updateDanmuInfo(info: info)
    
        if let info = info as? SLBgDanmuInfo {
            bgView.backgroundColor = info.bgColor
        }
    }
}
