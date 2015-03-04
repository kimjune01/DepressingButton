//
//  DepressingButton.swift
//  Animase
//
//  Created by Camvy Films on 2015-03-03.
//  Copyright (c) 2015 June. All rights reserved.
//

import UIKit

///An extension to allow a depressing animation when touched down
extension UIButton {
  func setupDepression() {
    addTarget(self, action: "didTouchDown:", forControlEvents: .TouchDown)
    addTarget(self, action: "didTouchDragExit:", forControlEvents: .TouchDragExit)
    addTarget(self, action: "didTouchUp:", forControlEvents: .TouchUpInside)
  }
  
  func didTouchDown(button:UIButton) {
    UIView.animateWithDuration(0.07){
      self.transform = CGAffineTransformMakeScale(0.98, 0.98)
    }
  }
  
  func didTouchDragExit(button:UIButton) {
    UIView.animateWithDuration(0.07){
      self.transform = CGAffineTransformMakeScale(1, 1)
    }
  }
  
  func didTouchUp(button:UIButton) {
     UIView.animateWithDuration(0.07){
      self.transform = CGAffineTransformMakeScale(1, 1)
    }
  }
  
  override public func continueTrackingWithTouch(touch: UITouch, withEvent event: UIEvent) -> Bool {
    let exitExtension: CGFloat = 5
    let outerBounds: CGRect = CGRectInset(self.bounds, -exitExtension, -exitExtension)
    let touchOutside: Bool = !CGRectContainsPoint(outerBounds, touch.locationInView(self))
    if touchOutside {
      let previousTouchInside = CGRectContainsPoint(outerBounds, touch.previousLocationInView(self))
      if previousTouchInside {
        sendActionsForControlEvents(.TouchDragExit)
        return false
      } else {
        sendActionsForControlEvents(.TouchDragOutside)
        return false
      }
    }
    return super.continueTrackingWithTouch(touch, withEvent: event)
  }

}