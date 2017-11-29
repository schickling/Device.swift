//
//  DeviceTests.swift
//  DeviceTests
//
//  Created by Johannes Schickling on 7/20/15.
//
//

import XCTest
@testable import Device

fileprivate extension DeviceType {

    var testIdentifiers: [String] {

        switch self {
        case .notAvailable: return []
        case .simulator: return ["i386", "x86_64"]

        case .iPhone2G: return ["iPhone1,1"]
        case .iPhone3G: return ["iPhone1,2"]
        case .iPhone3GS: return ["iPhone2,1"]

        case .iPhone4: return ["iPhone3,1", "iPhone3,2", "iPhone3,3"]
        case .iPhone4S: return ["iPhone4,1"]

        case .iPhone5: return ["iPhone5,1", "iPhone5,2"]
        case .iPhone5C: return ["iPhone5,3", "iPhone5,4"]
        case .iPhone5S: return ["iPhone6,1", "iPhone6,2"]

        case .iPhone6: return ["iPhone7,2"]
        case .iPhone6Plus: return ["iPhone7,1"]
        case .iPhone6S: return ["iPhone8,1"]
        case .iPhone6SPlus: return ["iPhone8,2"]

        case .iPhoneSE: return ["iPhone8,4"]

        case .iPhone7: return ["iPhone9,1", "iPhone9,3"]
        case .iPhone7Plus: return ["iPhone9,2", "iPhone9,4"]

        case .iPhone8: return ["iPhone10,1", "iPhone10,4"]
        case .iPhone8Plus: return ["iPhone10,2", "iPhone10,5"]
        case .iPhoneX: return ["iPhone10,3", "iPhone10,6"]

        case .iPodTouch1G: return ["iPod1,1"]
        case .iPodTouch2G: return ["iPod2,1"]
        case .iPodTouch3G: return ["iPod3,1"]
        case .iPodTouch4G: return ["iPod4,1"]
        case .iPodTouch5G: return ["iPod5,1"]
        case .iPodTouch6G: return ["iPod7,1"]

        case .iPad: return ["iPad1,1", "iPad1,2"]
        case .iPad2: return ["iPad2,1", "iPad2,2", "iPad2,3", "iPad2,4"]
        case .iPad3: return ["iPad3,1", "iPad3,2", "iPad3,3"]
        case .iPad4: return ["iPad3,4", "iPad3,5", "iPad3,6"]
        case .iPadMini: return ["iPad2,5", "iPad2,6", "iPad2,7"]
        case .iPadMiniRetina: return ["iPad4,4", "iPad4,5", "iPad4,6"]
        case .iPadMini3: return ["iPad4,7", "iPad4,8", "iPad4,9"]
        case .iPadMini4: return ["iPad5,1", "iPad5,2"]
        case .iPadAir: return ["iPad4,1", "iPad4,2", "iPad4,3"]
        case .iPadAir2: return ["iPad5,3", "iPad5,4"]
        case .iPadPro9Inch: return ["iPad6,3", "iPad6,4"]
        case .iPadPro10p5Inch: return ["iPad7,3", "iPad7,4"]
        case .iPadPro12Inch: return ["iPad6,7", "iPad6,8", "iPad7,1", "iPad7,2"]
        }
    }
}

class DeviceTests: XCTestCase {

    let simulatorTypes: [String] = ["i386", "x86_64"]

    let iPhoneTypes: [String] = {
        return ["iPhone1,1", "iPhone1,2", "iPhone2,1", "iPhone3,1", "iPhone3,1", "iPhone3,2",
                "iPhone3,3", "iPhone4,1", "iPhone5,1", "iPhone5,2", "iPhone5,3", "iPhone5,4",
                "iPhone6,1", "iPhone6,2", "iPhone7,1", "iPhone7,2", "iPhone8,2", "iPhone8,1", "iPhone8,4",
                "iPhone10,1", "iPhone10,4", "iPhone10,2", "iPhone10,5", "iPhone10,3", "iPhone10,6"]
    }()

    let iPodTypes: [String] = {
        return ["iPod1,1", "iPod2,1", "iPod3,1", "iPod4,1", "iPod5,1", "iPod7,1"]
    }()

    var iPadTypes: [String] {
        return ["iPad1,1", "iPad1,2", "iPad2,1", "iPad2,2", "iPad2,3", "iPad2,4", "iPad2,5",
                "iPad2,6", "iPad2,7", "iPad3,1", "iPad3,2", "iPad3,3", "iPad3,4", "iPad3,5",
                "iPad3,6", "iPad4,1", "iPad4,2", "iPad4,3", "iPad4,4", "iPad4,5", "iPad4,6",
                "iPad4,7", "iPad4,8", "iPad5,1", "iPad5,2", "iPad5,3", "iPad5,4", "iPad6,3", "iPad6,4", "iPad6,7", "iPad6,8", "iPad7,1", "iPad7,2", "iPad7,3", "iPad7,4"]
    }

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func testExample() {

        XCTAssertNotEqual(DeviceType.current, DeviceType.notAvailable)
        XCTAssertNotEqual(UIDevice.current.deviceType, DeviceType.notAvailable)

        for type in simulatorTypes {
            let deviceType = DeviceType(identifier: type)
            XCTAssertEqual(deviceType, DeviceType.simulator)
        }

        for type in iPhoneTypes {
            let deviceType = DeviceType(identifier: type)
            XCTAssertNotEqual(deviceType, DeviceType.notAvailable)
        }

        for type in iPodTypes {
            let deviceType = DeviceType(identifier: type)
            XCTAssertNotEqual(deviceType, DeviceType.notAvailable)
        }
        
        for type in iPadTypes {
            let deviceType = DeviceType(identifier: type)
            XCTAssertNotEqual(deviceType, DeviceType.notAvailable)
        }
        
        let emptyDevice = DeviceType(identifier: "")
        XCTAssertEqual(emptyDevice, DeviceType.notAvailable)
        
        for type in DeviceType.all {
            XCTAssertFalse(type.displayName.isEmpty)

            XCTAssert(type.identifiers == type.testIdentifiers)
        }
    }
}
