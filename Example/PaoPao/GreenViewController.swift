//
//  GreenViewController.swift
//  PaoPao
//
//  Created by Light on 2020/3/20.
//  Copyright © 2020 Light. All rights reserved.
//

import UIKit
import Kingfisher
import PaoPao

class GreenViewController: UIViewController {
    
    lazy var backBtn: UIButton = {
        let btn = UIButton()
        btn.backgroundColor = .cyan
        btn.addTarget(self, action: #selector(backBtnClick), for: .touchUpInside)
        return btn
    }()
    
    lazy var viewI: UIImageView = {
        let image = UIImageView()
        image.backgroundColor = UIColor.red
        return image
    }()
    
    private lazy var iconView: SuspendView = {
        let v = SuspendView()
        v.layer.shadowOffset = CGSize(width: 12, height: 12)
        v.backgroundColor = UIColor.white
        v.layer.shadowColor = UIColor.black.cgColor
        v.layer.shadowOpacity = 0.8
        v.layer.shadowRadius = 4
        v.layer.masksToBounds = true
        v.layer.cornerRadius = 4
        return v
    }()
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        // 添加悬浮按钮
//        SuspendViewManager.shared.addSuspendView()
        GuideHelper.shared.beginGuideRequest(type: .collection, goodId: 1)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
//        view.addSubview(backBtn)
//        backBtn.snp.makeConstraints { (make) in
//            make.centerX.equalToSuperview()
//            make.top.equalTo(300)
//            make.width.equalTo(100)
//            make.height.equalTo(40)
//        }
        
//        backBtn.layoutIfNeeded()
//        backBtn.jk_applyShadowCorner(corner: .allCorners, cornerRadii: CGSize.init(width: 4, height: 4), shadowColor: UIColor.black, shadowOffset: CGSize.init(width: 0, height: 0), shadowOpacity: 0.1, shadowRadius: 12)
        
//        view.addSubview(iconView)
//        iconView.snp.makeConstraints { (make) in
//            make.size.equalTo(SuspendViewConfig.suspendViewSize)
//            make.center.equalToSuperview()
//        }
//        view.addSubview(viewI)
//        viewI.snp.makeConstraints { (make) in
//            make.centerX.equalToSuperview()
//            make.top.equalTo(200)
//            make.width.height.equalTo(40)
//        }
//        viewI.kf.setImage(with: URL.init(string: "https://asvdkk.jmlk.co/AANv"))
//
        
    }
    
    
    @objc func backBtnClick() {
        self.navigationController?.popViewController(animated: true)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
