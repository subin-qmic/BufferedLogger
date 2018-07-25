//
//  AppDelegate.swift
//  Demo
//
//  Created by YOSHIMUTA YOHEI on 2018/07/25.
//  Copyright © 2018年 YOSHIMUTA YOHEI. All rights reserved.
//

import UIKit
import BufferedLogger

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    var logger: BFLogger!

    func application(_ application: UIApplication,
                     didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        let writer = MyWriter()
        let config = Config(flushEntryCount: 5,
                            flushInterval: 10,
                            retryRule: MyRetryRule(retryLimit: 3))
        logger = BFLogger.init(writer: writer, config: config)
        logger.post("1".data(using: .utf8)!)
        logger.post("2".data(using: .utf8)!)
        logger.post("3".data(using: .utf8)!)
        logger.post("4".data(using: .utf8)!)
        logger.post("5".data(using: .utf8)!)
        logger.post("6".data(using: .utf8)!)
        return true
    }
}

