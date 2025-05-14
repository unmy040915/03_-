//
//  ViewController.swift
//  Count
//
//  Created by 牟禮優汰 on 2025/04/30.
//

import UIKit

class ViewController: UIViewController {
    
    var backgroundViews: [UIView] = []
    
    var numberNeko: Int = 0
    var numberInu: Int = 0
    var numberBird: Int = 0
   
    @IBOutlet var labelNeko: UILabel!
    @IBOutlet var labelInu: UILabel!
    @IBOutlet var labelBird: UILabel!
    
    @IBOutlet var backgroundBird: UIView!
    @IBOutlet var backgroundInu: UIView!
    @IBOutlet var backgroundNeko: UIView!
    @IBOutlet var backgroundMori: UIView!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        backgroundViews = [backgroundNeko,backgroundInu,backgroundBird]
    }
    @IBAction func plusNeko() {
        setupPlus(number: &numberNeko, label: labelNeko)
        showOnly(viewToShow: backgroundNeko)
    }
    @IBAction func plusInu() {
        setupPlus(number: &numberInu, label: labelInu)
        showOnly(viewToShow: backgroundInu)
    }
    @IBAction func plusBird() {
        setupPlus(number: &numberBird, label: labelBird)
        showOnly(viewToShow: backgroundBird)
    }
    
    @IBAction func minusNeko() {
        setupMinus(number: &numberNeko, label: labelNeko)
    }
    @IBAction func minusInu() {
        setupMinus(number: &numberInu, label: labelInu)
    }
    @IBAction func minusBird() {
        setupMinus(number: &numberBird, label: labelBird)
    }
    
    func minus(number:inout Int,label:UILabel) {
        number -= 1
        label.text = String(number)
    }
    
    func plus(number:inout Int,label:UILabel) {
        number += 1
        label.text = String(number)
    }
    
    func setupMinus(number:inout Int,label:UILabel) {
        minus(number:&number,label:label)
        ifColor(number: number, label: label)
    }
    
    func setupPlus(number:inout Int,label:UILabel) {
        plus(number:&number,label:label)
        ifColor(number: number, label: label)
    }
    
    @IBAction func reset() {
        numberInu = 0
        numberNeko = 0
        numberBird = 0
        
        labelInu.text = String(numberInu)
        labelNeko.text = String(numberNeko)
        labelBird.text = String(numberBird)
        
        ifColor(number: numberInu, label: labelNeko)
        ifColor(number: numberNeko, label: labelNeko)
        ifColor(number: numberBird, label: labelBird)
        
        }
    
    func ifColor(number:Int,label:UILabel) {
        if number >= 10{
            label.textColor = UIColor.red
        } else if number <= -10{
            label.textColor = UIColor.blue
        }else{
            label.textColor = UIColor.black
        }
    }
    
    func showOnly(viewToShow: UIView) {
        for view in backgroundViews {
            view.isHidden = view !== viewToShow
        }
    }
    
}

