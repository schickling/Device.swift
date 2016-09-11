# Device.swift [![Carthage compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage)
Super-lightweight library to detect used device

## Usage

`Device.swift` extends the `UIDevice` class by adding a `deviceType: DeviceType` property.

```swift
import Device

let deviceType = UIDevice.currentDevice().deviceType

switch deviceType {
case .IPhone6SPlus: print("Do stuff for iPhone6S Plus")
case .IPadMini: print("Do stuff for iPad mini")
default: print("Check other available cases of DeviceType")
}
```

### Available `DeviceType` cases

```swift
enum DeviceType {
    case notAvailable

    case iPhone2G
    case iPhone3G
    case iPhone3GS
    case iPhone4
    case iPhone4S
    case iPhone5
    case iPhone5C
    case iPhone5S
    case iPhone6Plus
    case iPhone6
    case iPhone6S
    case iPhone6SPlus
    case iPhoneSE

    case iPodTouch1G
    case iPodTouch2G
    case iPodTouch3G
    case iPodTouch4G
    case iPodTouch5G

    case iPad
    case iPad2
    case iPad3
    case iPad4
    case iPadMini
    case iPadMiniRetina
    case iPadMini3

    case iPadAir
    case iPadAir2
    
    case iPadPro

    case simulator
}
```


## Install

### Carthage

Add the following to your `Cartfile` and follow [these instructions](https://github.com/Carthage/Carthage#adding-frameworks-to-an-application)

```
github "schickling/Device.swift"
```

### CocoaPods

CocoaPods 0.36 adds supports for Swift and embedded frameworks. To integrate `Device` into your project add the following to your `Podfile`:

```ruby
platform :ios, '8.0'
use_frameworks!

pod 'Device.swift'
```
