//
//  GradientColorEX.swift
//  Bokhary
//
//  Created by Ann mohammed on 30/12/2022.
//

import Foundation
import UIKit

@IBDesignable
public class GradientView: UIView {
    public override class var layerClass: AnyClass         { CAGradientLayer.self }
    public var gradientLayer: CAGradientLayer             { layer as! CAGradientLayer }

    @IBInspectable public var startColor: UIColor = .white { didSet { updateColors() } }
    @IBInspectable public var endColor: UIColor = .red     { didSet { updateColors() } }
    @IBInspectable var horizontalMode:  Bool =  false { didSet { updatePoints() }}
    @IBInspectable var diagonalMode:    Bool =  false { didSet { updatePoints() }}
    
    func updatePoints() {
        if horizontalMode {
            gradientLayer.startPoint = diagonalMode ? .init(x: 1, y: 0) : .init(x: 0, y: 0.5)
            gradientLayer.endPoint   = diagonalMode ? .init(x: 0, y: 1) : .init(x: 1, y: 0.5)
        } else {
            gradientLayer.startPoint = diagonalMode ? .init(x: 0, y: 0) : .init(x: 0.5, y: 0)
            gradientLayer.endPoint   = diagonalMode ? .init(x: 1, y: 1) : .init(x: 0.5, y: 1)
        }
    }
    
    // expose startPoint and endPoint to IB

    @IBInspectable public var startPoint: CGPoint {
        get { gradientLayer.startPoint }
        set { gradientLayer.startPoint = newValue }
    }

    @IBInspectable public var endPoint: CGPoint {
        get { gradientLayer.endPoint }
        set { gradientLayer.endPoint = newValue }
    }

    // while we're at it, let's expose a few more layer properties so we can easily adjust them in IB

    @IBInspectable public override var cornerRadius: CGFloat {
        get { layer.cornerRadius }
        set { layer.cornerRadius = newValue }
    }

    @IBInspectable public override var borderWidth: CGFloat {
        get { layer.borderWidth }
        set { layer.borderWidth = newValue }
    }

    @IBInspectable public override var borderColor: UIColor? {
        get { layer.borderColor.flatMap { UIColor(cgColor: $0) } }
        set { layer.borderColor = newValue?.cgColor }
    }

    // init methods

    public override init(frame: CGRect = .zero) {
        super.init(frame: frame)
        updateColors()
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
        updateColors()
    }
}

private extension GradientView {
    func updateColors() {
        gradientLayer.colors = [startColor.cgColor, endColor.cgColor]
    }
}

@IBDesignable
public class GradientButton: UIButton {
    public override class var layerClass: AnyClass         { CAGradientLayer.self }
    public var gradientLayer: CAGradientLayer             { layer as! CAGradientLayer }

    @IBInspectable public var startColor: UIColor = .white { didSet { updateColors() } }
    @IBInspectable public var endColor: UIColor = .red     { didSet { updateColors() } }
    @IBInspectable var horizontalMode:  Bool =  false { didSet { updatePoints() }}
    @IBInspectable var diagonalMode:    Bool =  false { didSet { updatePoints() }}
    
    func updatePoints() {
        if horizontalMode {
            gradientLayer.startPoint = diagonalMode ? .init(x: 1, y: 0) : .init(x: 0, y: 0.5)
            gradientLayer.endPoint   = diagonalMode ? .init(x: 0, y: 1) : .init(x: 1, y: 0.5)
        } else {
            gradientLayer.startPoint = diagonalMode ? .init(x: 0, y: 0) : .init(x: 0.5, y: 0)
            gradientLayer.endPoint   = diagonalMode ? .init(x: 1, y: 1) : .init(x: 0.5, y: 1)
        }
    }
    
    // expose startPoint and endPoint to IB

    @IBInspectable public var startPoint: CGPoint {
        get { gradientLayer.startPoint }
        set { gradientLayer.startPoint = newValue }
    }

    @IBInspectable public var endPoint: CGPoint {
        get { gradientLayer.endPoint }
        set { gradientLayer.endPoint = newValue }
    }

    // while we're at it, let's expose a few more layer properties so we can easily adjust them in IB

    @IBInspectable public override var cornerRadius: CGFloat {
        get { layer.cornerRadius }
        set { layer.cornerRadius = newValue }
    }

    @IBInspectable public override var borderWidth: CGFloat {
        get { layer.borderWidth }
        set { layer.borderWidth = newValue }
    }

    @IBInspectable public override var borderColor: UIColor? {
        get { layer.borderColor.flatMap { UIColor(cgColor: $0) } }
        set { layer.borderColor = newValue?.cgColor }
    }

    // init methods

    public override init(frame: CGRect = .zero) {
        super.init(frame: frame)
        updateColors()
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
        updateColors()
    }
}

private extension GradientButton {
    func updateColors() {
        gradientLayer.colors = [startColor.cgColor, endColor.cgColor]
    }
}
