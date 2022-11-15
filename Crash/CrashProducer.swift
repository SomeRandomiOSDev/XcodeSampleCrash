//
//  CrashProducer.swift
//  Crash
//

import Foundation
import Combine

enum CrashProducer {

    case intType(any Publisher<Int?, Never>)
    case stringType(any Publisher<String?, Never>)
    case boolType(any Publisher<Bool?, Never>)

    @inline(__always) static func intType(_ publisher: some Publisher<Int, Never>) -> Self { .intType(publisher.map { $0 as Int? }) }
    @inline(__always) static func stringType(_ publisher: some Publisher<String, Never>) -> Self { .stringType(publisher.map { $0 as String? }) }
    @inline(__always) static func boolType(_ publisher: some Publisher<Bool, Never>) -> Self { .boolType(publisher.map { $0 as Bool? }) }
}
