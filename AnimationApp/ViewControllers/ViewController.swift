//
//  ViewController.swift
//  AnimationApp
//
//  Created by Rasikon on 17.09.2020.
//

import Spring

class ViewController: UIViewController {
    
    @IBOutlet weak var springAnimationView: SpringView!
    @IBOutlet weak var informationLabel: UILabel!
    
    var animation = Animation.getAnimation()
    
    @IBAction func runAnimation(_ sender: UIButton) {
        springAnimationView.animation = animation.name
        springAnimationView.curve = animation.curve
        springAnimationView.force = CGFloat(animation.force)
        springAnimationView.duration = CGFloat(animation.duration)
        springAnimationView.delay = CGFloat(animation.delay)
        springAnimationView.animate()
        informationLabel.text = animation.description
        print(animation)
        animation = Animation.getAnimation()
        sender.setTitle(animation.name, for: .normal)
        print(animation)
    }
}

