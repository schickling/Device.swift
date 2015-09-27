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

### Carthage

Add the following to your `Cartfile` and follow [these instructions](https://github.com/Carthage/Carthage#adding-frameworks-to-an-application)

```
github "schickling/Device.swift" >= 0.1.0
```
