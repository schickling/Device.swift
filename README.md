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
    case NotAvailable

    case IPhone2G
    case IPhone3G
    case IPhone3GS
    case IPhone4
    case IPhone4S
    case IPhone5
    case IPhone5C
    case IPhone5S
    case IPhone6Plus
    case IPhone6
    case IPhone6S
    case IPhone6SPlus

    case IPodTouch1G
    case IPodTouch2G
    case IPodTouch3G
    case IPodTouch4G
    case IPodTouch5G

    case IPad
    case IPad2
    case IPad3
    case IPad4
    case IPadMini
    case IPadMiniRetina
    case IPadMini3

    case IPadAir
    case IPadAir2

    case Simulator
}
```


## Install

### CocoaPods

Device.swift is available through [CocoaPods](http://cocoapods.org), to install
it simply add the following line to your Podfile:

```ruby
pod "Device.swift"
```

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

pod 'Device'
```

## License

Device.swift is available under the MIT license. See the LICENSE file for more info.
