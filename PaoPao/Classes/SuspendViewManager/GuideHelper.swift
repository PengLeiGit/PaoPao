//
//  GuideHelper.swift
//  PaoPao
//
//  Created by 彭磊 on 2020/3/24.
//  Copyright © 2020 PL. All rights reserved.
//

import UIKit
import HandyJSON

public enum GuideType {
    case order // 下单
    case collection // 收藏
    case browse // 浏览
}

public class GuideHelper: NSObject {
    // MARK: - 初始化单例
    public static let shared = GuideHelper()
    private override init() {
        super.init()
    }
}

public extension GuideHelper {
    func beginGuideRequest(type: GuideType, goodId: Int) {
        // 网络请求，请求成功后对应弹出对应的视图
        var model = GuideModel()
        model.subOrderNo = "0"
        SuspendViewManager.shared.addSuspendView(model: model)
    }
    
    func requestNewUserTask() {
        
        
    }
}



public class GuideModel: NSObject, HandyJSON, Codable {
    required override public init() {}
    
    var bizChannel: String = ""
    var bizCode: String = ""
    var bizType: String = ""
    var createTime: String = ""
    var feature: String = ""
    var inventoryId: String = ""
    var modifyTime: String = ""
    var orderNo: String = ""
    var subOrderNo: String = ""
    var subOrderStatus: Int = 0
}
