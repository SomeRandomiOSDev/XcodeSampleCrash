# XcodeSampleCrash

A sample application for reporting a crash generated by the Swift compiler.

1. Open the attached sample project.
2. Select the `Debug` scheme and run the application on an iOS version prior to iOS 16.0 (e.g. iOS 15.4)
3. Observe that after the application finishes launching some logs are printed to the console and no crash occurs.
4. Now select the `Release` (or `Debug Crash`) scheme and run the application again, also on an iOS version prior to iOS 16.0.
5. Observe that the application crashes when calling the `CrashProducer.stringType(_:)` static method.
