//
//  Storyboards.swift
//  DVIA - Damn Vulnerable iOS App (damnvulnerableiosapp.com)
//  Created by Prateek Gianchandani on 23/11/17.
//  Copyright © 2018 HighAltitudeHacks. All rights reserved.
//  You are free to use this app for commercial or non-commercial purposes
//  You are also allowed to use this in trainings
//  However, if you benefit from this project and want to make a contribution, please consider making a donation to The Juniper Fund (www.thejuniperfund.org/)
//  The Juniper fund is focusing on Nepali workers involved with climbing and expedition support in the high mountains of Nepal. When a high altitude worker has an accident (death or debilitating injury), the impact to the family is huge. The juniper fund provides funds to the affected families and help them set up a sustainable business.
//  For more information,  visit www.thejuniperfund.org
//  Or watch this video https://www.youtube.com/watch?v=HsV6jaA5J2I
//  And this https://www.youtube.com/watch?v=6dHXcoF590E
 

import Foundation

enum Storyboard: String {
    
    case home = "Home"
    case insecureDataStorage = "InsecureDataStorage"
    case runtimeManipulation = "RuntimeManipulation"
    case antiAntiHookingDebugging = "AntiAntiHookingDebugging"
    case binaryProtection = "BinaryProtection"
    case excessivePermissions = "ExcessivePermissions"
    case touchIDBypass = "TouchIDBypass"
    case sideChannelDataLeakage = "SideChannelDataLeakage"
    case securityDecisonsViaUntrustedInput = "SecurityDecisonsViaUntrustedInput"
    case brokenCryptography = "BrokenCryptography"
    case clientSideInjection = "ClientSideInjection"
    case transportLayerProtection = "TransportLayerProtection"
    case applicationPatching = "ApplicationPatching"
    case sensitiveInformation = "SensitiveInformation"
    case attackingThirdPartyLibraries = "AttackingThirdPartyLibraries"
    case jailbreakDetection = "JailbreakDetection"
    case phishing = "Phishing"
    case donate = "Donate"

    
    var name: String {
        return self.rawValue
    }
}
