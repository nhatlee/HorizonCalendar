//
//  CalendarEdgeInsets.swift
//  HorizonCalendar
//
//  Created by Nhat Le on 25/03/2021.
//  Copyright © 2021 Airbnb. All rights reserved.
//

import Foundation
import CoreGraphics
import UIKit

public struct CalendarDirectionEdgeInsets {
  public var top: CGFloat // specify amount to inset (positive) for each of the edges. values can be negative to 'outset'

  public var leading: CGFloat

  public var bottom: CGFloat

  public var trailing: CGFloat
  
  public init(
    top: CGFloat,
    leading: CGFloat,
    bottom: CGFloat,
    trailing: CGFloat) {
    self.top = top
    self.leading = leading
    self.bottom = bottom
    self.trailing = trailing
  }

  #if __IPHONE_11_0
  public var layoutMargins: NSDirectionalEdgeInsets!
  #else
//  public var layoutMargins: UIEdgeInsets!
  // TODO: Check if we need handle for this
  #endif
  func isDirectionLayoutMargin() -> Bool {
    if #available(iOS 11.0, *) {
      // TODO: remove hardcode
      return true//layoutMargins == directionalLayoutMargins
    }
    return false
  }

}
