## Swift-DocC-Plugin-Mix-Demo

Currently, swift-docc-plugin can only emit Swift doc for Swift module.

- [x] Swift Doc for Swift module
- [ ] ObjetiveC Doc for Swift module
- [ ] ObjetiveC Doc for ObjetiveC module
- [ ] Swift Doc for ObjetiveC module 

The ultra goal is to support them all.

### Swift Doc for Swift module

This is already supported

### ObjetiveC Doc for Swift module

- [ ] Need to figure out the corresponding swiftc flag when setting `DOCC_EXTRACT_OBJC_INFO_FOR_SWIFT_SYMBOLS` on Xcode

There is a Xcode config for `DOCC_EXTRACT_OBJC_INFO_FOR_SWIFT_SYMBOLS`

But I have not found a corresponding swift-docc-plugin config.

> https://github.com/apple/swift-docc-plugin/issues/47
>
> https://forums.swift.org/t/extending-swift-docc-to-support-objective-c-documentation/53243

### ObjetiveC Doc for ObjetiveC module

- [ ] Need support from swift-package-manager

SwiftPM's `PackagePlugin.PackageManager.getSymbolGraph()` can only get swift module's symbol graph.

So if we want to the the ObjectiveC module's symbol graph. We have to manullay generate it by `clang -extract-api`.

And you can try it directly by running `sh ./Scripts/extract-c-symbol.sh CDemoKit`

> https://forums.swift.org/t/clang-support-for-objective-c-symbol-graph-generation/57689

### Swift Doc for ObjetiveC module 

- [ ] Need support from swift-docc-plugin

This is supported by https://github.com/Kyle-Ye/swift-docc-plugin/tree/feature/kyle/clang_target_support

And you can try it directly by running `sh ./Scripts/docc-plugin-preview.sh CDemoKit`
