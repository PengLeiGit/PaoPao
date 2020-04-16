//
//  SuspendWindow.swift
//  PaoPao
//
//   Created by 彭磊 on 2020/3/23.
//  Copyright © 2020 PL. All rights reserved.
//


import UIKit

protocol SuspendWindowDelegate: class {
    func suspendWindowDidTap(_ suspendWindwo: SuspendWindow)
}
public class SuspendWindow: UIWindow {
    
    weak var delegate: SuspendWindowDelegate?
   
    private lazy var iconView: SuspendView = {
        let v = SuspendView()
        v.backgroundColor = UIColor.white
        return v
    }()
    
    private var panStartPoint: CGPoint = .zero
    private var panStartCenter: CGPoint = .zero
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = UIColor.init(white: 1, alpha: 0)
        setupUI()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

public extension SuspendWindow {
    private func setupUI() {
        alpha = 0
        clipsToBounds = true
        isUserInteractionEnabled = true
        windowLevel = 1000 //UIWindow.Level.statusBar
        addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(didTap(gesture:))))
        addSubview(iconView)
        iconView.snp.makeConstraints { (make) in
            make.size.equalTo(SuspendViewConfig.suspendViewSize)
//            make.centerX.equalToSuperview()
            make.left.equalTo(10)
            make.top.equalTo(20)
        }
        
        iconView.show()
    }
    
    @objc private func didTap(gesture: UITapGestureRecognizer) {
        delegate?.suspendWindowDidTap(self)
    }

    // 赋值
    public func fillModel(model: GuideModel) {
        
    }
    
}


