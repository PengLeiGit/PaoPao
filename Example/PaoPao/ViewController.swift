//
//  ViewController.swift
//  PaoPao
//
//  Created by 1248667206@qq.com on 04/16/2020.
//  Copyright (c) 2020 1248667206@qq.com. All rights reserved.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    lazy var floatWindwowBtn: UIButton = {
        let btn = UIButton()
        btn.backgroundColor = UIColor.cyan
        btn.setTitleColor(.white, for: .normal)
        btn.setTitle("跳转浮窗", for: .normal)
        btn.addTarget(self, action: #selector(floatWindwowBtnClick), for: .touchUpInside)
        return btn
    }()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        view.addSubview(floatWindwowBtn)
        floatWindwowBtn.snp.makeConstraints { (make) in
            make.width.equalTo(100)
            make.height.equalTo(50)
            make.centerX.equalToSuperview()
            make.top.equalTo(100)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @objc func floatWindwowBtnClick() {
        let VC = GreenViewController()
        self.navigationController?.pushViewController(VC, animated: true)
    }

}

