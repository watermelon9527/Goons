//
//  extension.swift
//  Goon
//
//  Created by nono chan  on 2022/3/28.
//
import UIKit
extension UIView {

    /// 设置多个圆角
    ///
    /// - Parameters:
    ///   - cornerRadii: 圆角幅度
    ///   - roundingCorners: UIRectCorner(rawValue: (UIRectCorner.topRight.rawValue) | (UIRectCorner.bottomRight.rawValue))
     public func filletedCorner(_ cornerRadii:CGSize,_ roundingCorners:UIRectCorner)  {
          let fieldPath = UIBezierPath.init(roundedRect: bounds, byRoundingCorners: roundingCorners, cornerRadii:cornerRadii )
          let fieldLayer = CAShapeLayer()
          fieldLayer.frame = bounds
          fieldLayer.path = fieldPath.cgPath
          self.layer.mask = fieldLayer
    }
}
