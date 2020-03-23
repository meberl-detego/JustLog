//
//  LogzIODestination.swift
//  Instore
//
//  Created by Martin Eberl on 18.03.20.
//  Copyright © 2020 Detego. All rights reserved.
//

import Foundation

final public class LogzIODestination: LogstashDestination {
    
    public var  isActive = false
    
    override public func send(_ level: SwiftyBeaver.Level, msg: String, thread: String, file: String, function: String, line: Int, context: Any? = nil) -> String? {
        guard isActive else {
            return nil
        }
        return super.send(level, msg: msg, thread: thread, file: file, function: function, line: line)
    }
}
