//
//  SystemSoundManager.swift
//  SystemSound
//
//  Created by otake on 2025/05/07.
//

import Foundation
import AudioToolbox

@MainActor
public class SystemSoundManager {
    public static let shared: SystemSoundManager = SystemSoundManager()
    
    private var soundID: SystemSoundID = 0
    
    public func play(_ sound: SystemSound, vibrate: Bool = false) {
        if let url = CFBundleCopyResourceURL(CFBundleGetMainBundle(), nil, nil, nil) {
            AudioServicesCreateSystemSoundID(url as CFURL, &soundID)
            if vibrate {
                AudioServicesAddSystemSoundCompletion(SystemSoundID(kSystemSoundID_Vibrate), nil, nil, {_,_ in }, nil)
            }
            AudioServicesPlaySystemSound(soundID)
        } else {
            print("error: not file")
        }
    }
    
    public func vibrate() {
        AudioServicesPlaySystemSound(SystemSoundID(kSystemSoundID_Vibrate))
    }
}
