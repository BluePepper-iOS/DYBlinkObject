
import UIKit

public class DYBlinkObject {
    
    public init() {}
    
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
}
