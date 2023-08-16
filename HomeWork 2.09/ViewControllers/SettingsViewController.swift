//
//  SettingsViewController.swift
//  HomeWork 2.09
//
//  Created by Илья on 15.08.2023.
//

// Я не успел сделать проект. Тему плоховато, но понял. Нужно побольше попрактиковаться.
// Думаю, что бы смог реализовать ТЗ, но мне не хватило времени.
// Когда это все пишу, уже нет сил во всем разбираться. Извиняюсь!

import UIKit

final class SettingsViewController: UIViewController {
    
    @IBOutlet var displayScreenView: UIView!
    
    @IBOutlet var slidersSl: [UISlider]!
    
    @IBOutlet var colorLabels: [UILabel]!
    
    @IBOutlet var colorTextField: [UITextField]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        displayScreenView.layer.cornerRadius = 27
        paint(displayScreenView)
        labelValue(colorLabels, slidersSl, colorTextField)
        
    }
    
    @IBAction func textFiield(_ sender: UITextField) {
        
    }
    
    @IBAction func slider(_ sender: UISlider) {
        paint(displayScreenView)
        labelValue(colorLabels, slidersSl, colorTextField)
    }
    
    
    private func paint(_ display: UIView) {
        display.backgroundColor = UIColor(
            red: CGFloat(slidersSl[0].value),
            green: CGFloat(slidersSl[1].value),
            blue: CGFloat(slidersSl[2].value),
            alpha: 1.0
        )
    }
    
    private func labelValue(_ labels: [UILabel]!, _ sliders: [UISlider]!, _ textFilds: [UITextField]!) {
        for (label, slider) in zip(labels, sliders) {
            label.text = String(format: "%.2f", slider.value)
        }
        
        for (textFild, slider) in zip(textFilds, sliders) {
            textFild.text = String(format: "%.2f", slider.value)
        }
    }
    
}
