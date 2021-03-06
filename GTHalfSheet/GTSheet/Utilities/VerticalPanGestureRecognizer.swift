//
//  VerticalPanGestureRecognizer.swift
//  Gametime
//
//  Created by Matt Banach on 4/8/16.
//
//

import Foundation
import UIKit.UIGestureRecognizerSubclass

public class VerticalPanGestureRecognizer: UIPanGestureRecognizer {

    override public func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent) {
        super.touchesMoved(touches, with:event)

        if let view = self.view, abs(velocity(in: view).x) > abs(velocity(in: view).y) {
            state = .failed
            return
        }
    }
}
