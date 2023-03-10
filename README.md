# DYBlinkObject

[![CI Status](https://img.shields.io/travis/doyeonjeong/DYBlinkObject.svg?style=flat)](https://travis-ci.org/doyeonjeong/DYBlinkObject)
[![Version](https://img.shields.io/cocoapods/v/DYBlinkObject.svg?style=flat)](https://cocoapods.org/pods/DYBlinkObject)
[![License](https://img.shields.io/cocoapods/l/DYBlinkObject.svg?style=flat)](https://cocoapods.org/pods/DYBlinkObject)
[![Platform](https://img.shields.io/cocoapods/p/DYBlinkObject.svg?style=flat)](https://cocoapods.org/pods/DYBlinkObject)

![Simulator Screen Recording - iPhone 14 Pro - 2023-03-10 at 19 12 04](https://user-images.githubusercontent.com/108422901/224291229-ad353959-d34d-421d-93d7-3628cfc56450.gif)

## Description
This is Swift library that creates animated objects that seem to flickering.



## Installation

DYBlinkObject is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'DYBlinkObject'
```


## Example
To run the example project, clone the repo, and run `pod install` from the Example directory first.


### 1. Import project
```swift
import DYBlinkObject
```

### 2. Instance
```swift
let blinkObject = DYBlinkObject()
```

### 3. Make Object
```swift
let firstObject = blinkObject.drawObject(width: 200, height: 200)
```

### 4. Add Animation
```swift
blinkObject.addBlinkingAnimation(to: firstObject, withDuration: 2.0, delay: 0.0, minAlpha: 0.5)
```

## Sample

### Code Sample 1
```swift
let firstObject = blinkObject.drawObject(width: 200, height: 200)
blinkObject.addBlinkingAnimation(to: firstObject, withDuration: 2.0, delay: 0.0, minAlpha: 0.5)
```

### Code Sample 2
```swift
let secondObject = blinkObject.drawObject(width: 300, height: 40, radius: 10)
blinkObject.addBlinkingAnimation(to: secondObject, withDuration: 1.0, delay: 0.0, minAlpha: 0.2)
```

---

## Code: Drawing Object

```swift
/**
 Returns a UIView object with the specified size, corner radius, and background color, and adds a flickering animation to it.
 
 - Parameters:
 - width: The width of the view.
 - height: The height of the view.
 - radius: The corner radius of the view.
 
 - Returns: A UIView object with the specified size, corner radius, and background color, and a flickering animation.
 */
public func drawObject(width: CGFloat, height: CGFloat, radius: CGFloat = 20, color: UIColor = .white) -> UIView {
    let object = UIView()
    object.translatesAutoresizingMaskIntoConstraints = false
    object.backgroundColor = color
    object.layer.cornerRadius = radius
    object.clipsToBounds = true
    object.widthAnchor.constraint(equalToConstant: width).isActive = true
    object.heightAnchor.constraint(equalToConstant: height).isActive = true
    return object
}
```

## Code: Add a flickering animation to the object
```swift
/**
 Adds a blinking animation to the given `UIView` object.
 
 - Parameters:
 - object: The `UIView` object to which the blinking animation will be added.
 - duration: The duration of the animation.
 - delay: The delay before the animation starts.
 - minAlpha: The minimum alpha value for the `UIView`.
 
 - Note: This function uses the `UIView.animate(withDuration:delay:options:animations:)` method to create the blinking animation.
 
 */
public func addBlinkingAnimation(to object: UIView, withDuration duration: TimeInterval, delay: TimeInterval, minAlpha: CGFloat) {
    UIView.animate(withDuration: duration, delay: delay, options: [.repeat, .autoreverse]) {
        object.alpha = minAlpha
    }
}
```

## Author

doyeonjeong, debby_@kakao.com

## License

DYBlinkObject is available under the MIT license. See the LICENSE file for more info.
