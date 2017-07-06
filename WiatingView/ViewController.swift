//
//  ViewController.swift
//  WiatingView
//
//  Created by Henry on 7/6/17.
//  Copyright © 2017 Henry. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  // MARK: View life cycle
  override func viewDidLoad() {
    super.viewDidLoad()
  }

  // MARK: Action WaitingView here
  @IBAction func showButtonAction(_ sender: UIButton) {

    WaitingView.showViewIndicator(view: self.view)

    let when = DispatchTime.now() + 5 // change 5 to desired number of seconds

    // after 5 seconds indicator will hide it-self
    DispatchQueue.main.asyncAfter(deadline: when) {
       WaitingView.hideIndicator(view: self.view)
    }
  }

}

