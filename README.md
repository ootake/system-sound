# System Sound 
Get strong typed, autocompleted like system sound 

## Why use this?

It makes your code that uses:
- **Filly typed** less casting and guessing what a method will return
- **Autocompleted**, never have to guess that image name agein

Currently you type:
```swift
var soundID = 1000
AudioServicesPlaySystemSound(soundID)
AudioServicesAddSystemSoundCompletion(SystemSoundID(kSystemSoundID_Vibrate), nil, nil, {_,_ in }, nil)
AudioServicesPlaySystemSound(SystemSoundID(kSystemSoundID_Vibrate))
```

With SymbolExtension it becomes
```swift
SystemSoundManager.shared.play(.new_mail)
SystemSoundManager.shared.play(.new_mail, vibrate: true)
SystemSoundManager.shared.vibrate()
```

## Installation

As of SystemSound, Swift Package Manager is the recommended method of installation.

1. In Project Settings. on the tab "Package Dependencies", click "+", search for `https://github.com/ootake/system-sound` and click "Add Package".
2. Select the target that will use "SystemSound" and click "Add Package"
3. Your code file to `import SystemSound`
4. Now the `SystemSound` struct should be availabel in your code, use auto-complete to explore all static references.

