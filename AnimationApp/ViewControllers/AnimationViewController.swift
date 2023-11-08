//
//  ViewController.swift
//  AnimationApp
//
//  Created by Кирилл Саталкин on 06.11.2023.
//

import UIKit
import SpringAnimation

final class AnimationViewController: UIViewController {
   
    
    @IBOutlet weak var pressedButton: SpringButton!
    
    @IBOutlet weak var delayLabel: UILabel!
    @IBOutlet weak var durationLabel: UILabel!
    @IBOutlet weak var forceLable: UILabel!
    @IBOutlet weak var curveLabel: UILabel!
    @IBOutlet weak var presetLabel: UILabel!
    
    @IBOutlet weak var animationTextView: SpringView!
    @IBOutlet weak var animationView: SpringView!
    
    
    private var setUP: SettingView!
    private var setup = SettingView.getSetting()
    private var index = 0
    private var data = DataStore.shared
    
    override func viewDidLoad() {
        super.viewDidLoad()
        animationTextView.isHidden = true
        animationView.layer.cornerRadius = 20
        pressedButton.setTitle("RUN", for: .normal)
    }
    
    @IBAction func pressButton(_ sender: SpringButton) {
        animationTextView.isHidden = false
        applyAnimationSettings()
        
        index += 1
        
        if index >= data.preset.count {
            index = 0
        }
        
        settuping()
    }
    
    private func applyAnimationSettings() {
        if index < data.preset.count {
            animationView.animation = data.preset[index]
            animationView.curve = data.curve[index]
            animationView.force = data.forse[index]
            animationView.duration = data.duration[index]
            animationView.delay = data.delay[0]
            
            animationTextView.animation = "zoomIn"
            animationTextView.curve = "easeInCirc"
            animationTextView.force = 1
            animationTextView.duration = 0.1
            animationTextView.delay = 0.2
            
            animationTextView.animate()
            animationView.animate()
        }
    }
    
    private func settuping() {
        presetLabel.text = " preset: \(data.preset[index]) "
        curveLabel.text = " curve: \(data.curve[index]) "
        forceLable.text = " forse: \(data.forse[index]) "
        durationLabel.text = " duration: \(data.duration[index]) "
        delayLabel.text = " delay: \(data.delay[0]) "
        
        let nextIndex = (index + 1) % data.preset.count
        pressedButton.setTitle("\(data.preset[nextIndex])", for: .normal)
    }
}




