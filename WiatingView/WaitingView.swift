//
//  WaitingView.swift
//  WiatingView
//
//  Created by Henry on 7/6/17.
//  Copyright © 2017 Henry. All rights reserved.
//

import UIKit

let kSize:CGFloat = 0.5

class WaitingView: UIView {

  // MARK: Show indicator View
  class func showViewIndicator(view: UIView) {

    let waitView = WaitingView()
    waitView.bounds = view.bounds
    waitView.center = CGPoint(x: CGFloat(view.bounds.size.width * kSize), y: CGFloat(view.bounds.size.height * kSize))
    view.addSubview(waitView)
    view.bringSubview(toFront: waitView)

    // IndicatorView Setting up here
    let indicatorView = UIActivityIndicatorView(activityIndicatorStyle: .whiteLarge)

    let indicatorBg = UIView()
    indicatorBg.bounds = CGRect(x: CGFloat(0),
                                y: CGFloat(0),
                                width: CGFloat(indicatorView.bounds.size.width * 2),
                                height: CGFloat(indicatorView.bounds.size.height * 2))

    indicatorBg.backgroundColor = UIColor.black
    indicatorBg.alpha = 0.8
    indicatorBg.center = CGPoint(x: CGFloat(waitView.bounds.size.width * kSize),
                                 y: CGFloat(waitView.bounds.size.height * kSize))

    indicatorBg.layer.cornerRadius = 8.0

    waitView.addSubview(indicatorBg)

    indicatorView.center = CGPoint(x: CGFloat(indicatorBg.bounds.size.width * kSize),
                                   y: CGFloat(indicatorBg.bounds.size.height * kSize))

    indicatorBg.addSubview(indicatorView)
    indicatorView.startAnimating()
  }

  // MARK: Hide indicator View
  class func hideIndicator(view: UIView) {

    for currentChildView: UIView in view.subviews {
      if (currentChildView is WaitingView) {
          currentChildView.removeFromSuperview()
      }
    }
  }

}
