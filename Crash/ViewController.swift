//
//  ViewController.swift
//  Crash
//

import UIKit
import Combine

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let currentValue = CurrentValueSubject<Bool, Never>(false)
        let publisher = currentValue.map { "key=" + ($0 ? "true" : "false") }
                                    .share()

        let storage = CrashProducer.stringType(publisher)
        switch storage {
        case let .stringType(publisher):
            let subscription = publisher.sink { string in
                print(string ?? "<null>")
            }

            currentValue.value.toggle()
            currentValue.value.toggle()
            subscription.cancel()

        default:
            break
        }
    }
}
