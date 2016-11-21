//
//  DeviceTests.swift
//  DeviceTests
//
//  Created by Johannes Schickling on 7/20/15.
//
//

import XCTest
@testable import Device

class DeviceTests: XCTestCase {
	
	let simulatorTypes: [String] = ["i386", "x86_64"]
	
	let iPhoneTypes: [String] = {
		return ["iPhone1,1", "iPhone1,2", "iPhone2,1", "iPhone3,1", "iPhone3,1", "iPhone3,2", "iPhone3,3", "iPhone4,1", "iPhone5,1", "iPhone5,2", "iPhone5,3", "iPhone5,4", "iPhone6,1", "iPhone6,2", "iPhone7,1", "iPhone7,2", "iPhone8,2", "iPhone8,1", "iPhone8,4"]
	}()
	
	let iPodTypes: [String] = {
		return ["iPod1,1", "iPod2,1", "iPod3,1", "iPod4,1", "iPod5,1"]
	}()
	
	var iPadTypes: [String] {
		return ["iPad1,1", "iPad1,2", "iPad2,1", "iPad2,2", "iPad2,3", "iPad2,4", "iPad2,5", "iPad2,6", "iPad2,7", "iPad3,1", "iPad3,2", "iPad3,3", "iPad3,4", "iPad3,5", "iPad3,6", "iPad4,1", "iPad4,2", "iPad4,3", "iPad4,4", "iPad4,5", "iPad4,6", "iPad4,7", "iPad4,8", "iPad5,1", "iPad5,2", "iPad5,3", "iPad5,4", "iPad6,3", "iPad6,4", "iPad6,7", "iPad6,8"]
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
		
		for (_, type) in DeviceType.all.enumerated() {
			XCTAssertFalse(type.displayName.isEmpty)
		}
    }
}
