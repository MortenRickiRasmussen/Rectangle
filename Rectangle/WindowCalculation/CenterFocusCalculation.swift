//
//  CenterFocusCalculation.swift
//  Rectangle
//
//  Created by Morten Ricki Rasmussen on 29/04/2020.
//  Copyright © 2020 Ryan Hanson. All rights reserved.
//

import Foundation

class CenterFocusCalculation: WindowCalculation {
    
    override func calculateRect(_ window: Window, lastAction: RectangleAction?, visibleFrameOfScreen: CGRect, action: WindowAction) -> RectResult {

        if rectFitsWithinRect(rect1: window.rect, rect2: visibleFrameOfScreen) {
            var calculatedWindowRect = window.rect
            calculatedWindowRect.origin.x = round(visibleFrameOfScreen.width / 4)
            calculatedWindowRect.origin.y = 0
            calculatedWindowRect.size.width = round(visibleFrameOfScreen.width / 2)
            calculatedWindowRect.size.height = visibleFrameOfScreen.height
            return RectResult(calculatedWindowRect)
        } else {
            return RectResult(visibleFrameOfScreen)
        }

    }
    
}
