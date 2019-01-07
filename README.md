# Device.swift

[![Language][lang-image]][lang-url]
[![License][license-image]][license-url]
[![Platform][platform-image]][cocoapod-url]
[![Documentation][docs-image]][docs-url]
[![Pod Version][pod-version-image]][cocoapod-url]
[![Carthage Compatible][carthage-image]][carthage-url]

Super-lightweight library to detect used device

`Device.swift` extends the `UIDevice` class by adding a property:

```swift
var deviceType: DeviceType
```

## Install

### Carthage

Add the following to your `Cartfile` and follow [these instructions](https://github.com/Carthage/Carthage#adding-frameworks-to-an-application)

```bash
github "schickling/Device.swift"
```

### CocoaPods

To integrate `Device` into your project add the following to your `Podfile`:

```ruby
platform :ios, '8.0'
use_frameworks!

pod 'Device.swift'
```

## Usage

```swift
import Device

// Use import Device_swift if you're using Cocoapods

let deviceType = UIDevice.current.deviceType

switch deviceType {
  case .iPhone6SPlus: print("Do stuff for iPhone6S Plus")
  case .iPadMini: print("Do stuff for iPad mini")
  default: print("Check other available cases of DeviceType")
}
```

Also, check out our [Documentation][docs-url]

[carthage-image]: https://img.shields.io/badge/Carthage-compatible-4BC51D.svg
[docs-image]: https://img.shields.io/cocoapods/metrics/doc-percent/Device.swift.svg
[lang-image]: https://img.shields.io/badge/swift-4.1-orange.svg
[license-image]: https://img.shields.io/github/license/schickling/Device.swift.svg
[platform-image]: https://img.shields.io/cocoapods/p/Device.swift.svg
[pod-version-image]: https://img.shields.io/cocoapods/v/Device.swift.svg
[carthage-url]: https://github.com/Carthage/Carthage
[cocoapod-url]: http://cocoapods.org/pods/Device.swift
[docs-url]: http://cocoadocs.org/docsets/Device.swift
[homepage-url]: https://github.com/schickling/Device.swift.svg
[lang-url]: https://swift.org/
[license-url]: LICENSE
