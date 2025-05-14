//
//  ViewController.swift
//  Count
//
//  Created by 牟禮優汰 on 2025/04/30.
//

import UIKit

class ViewController: UIViewController {
    
    
    var numberNeko: Int = 0
    var numberInu: Int = 0
    var numberBird: Int = 0
    var numberNew: Int = 0

   
    @IBOutlet var labelNeko: UILabel!
    @IBOutlet var labelInu: UILabel!
    @IBOutlet var labelBird: UILabel!
    @IBOutlet var labelNew: UILabel!
    
    @IBOutlet var background: UIView!
    @IBOutlet var backgroundMori: UIView!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func plusNeko() {
        numberNeko=numberNeko + 1
        labelNeko.text = String(numberNeko)
        if numberNeko >= 10{
            labelNeko.textColor = UIColor.red
        } else if numberNeko <= -10{
            labelNeko.textColor = UIColor.blue
        }else{
            labelNeko.textColor = UIColor.black
        }
        
    }
    @IBAction func plusInu() {
        numberInu += 1
        labelInu.text = String(numberInu)
        if numberInu >= 10{
            labelInu.textColor = UIColor.red
        } else if numberInu <= -10{
            labelInu.textColor = UIColor.blue
        }else{
            labelInu.textColor = UIColor.black
        }
        
    }
    @IBAction func plusBird() {
        numberBird += 1
        labelBird.text = String(numberNeko)
        if numberNeko >= 10{
            labelBird.textColor = UIColor.red
        } else if numberNeko <= -10{
            labelBird.textColor = UIColor.blue
        }else{
            labelBird.textColor = UIColor.black
        }
        
    }
    
    @IBAction func plusNew() {
        numberNew += 1
        labelNew.text = String(numberNew)
        if numberNew >= 10{
            labelNew.textColor = UIColor.red
        } else if numberNew <= -10{
            labelNew.textColor = UIColor.blue
        }else{
            labelNew.textColor = UIColor.black
        }
        
    }
    
    @IBAction func minusNeko() {
        numberNeko -= 1
        labelNeko.text = String(numberNeko)
        if numberNeko >= 10{
            labelNeko.textColor = UIColor.red
        } else if numberNeko <= -10{
            labelNeko.textColor = UIColor.blue
        }else{
            labelNeko.textColor = UIColor.black
        }
    }
    @IBAction func minusInu() {
        numberInu -= 1
        labelInu.text = String(numberInu)
        if numberInu >= 10{
            labelInu.textColor = UIColor.red
        } else if numberInu <= -10{
            labelInu.textColor = UIColor.blue
        }else{
            labelInu.textColor = UIColor.black
        }
    }
    @IBAction func minusBird() {
        numberBird -= 1
        labelBird.text = String(numberBird)
        if numberBird >= 10{
            labelBird.textColor = UIColor.red
        } else if numberBird <= -10{
            labelBird.textColor = UIColor.blue
        }else{
            labelBird.textColor = UIColor.black
        }
    }
    @IBAction func minusNew() {
        numberNew -= 1
        labelNew.text = String(numberNew)
        if numberNew >= 10{
            labelNew.textColor = UIColor.red
        } else if numberNew <= -10{
            labelNew.textColor = UIColor.blue
        }else{
            labelNew.textColor = UIColor.black
        }
    }
    
    func minus(number:inout Int) {
        
    }
    
    func minus(number:inout Int,label:UILabel) {
        number -= 1
        label.text = String(number)
    }
    
    
    @IBAction func reset() {
        numberInu = 0
        numberNeko = 0
        numberBird = 0
        numberNew = 0
        
        labelInu.text = String(numberInu)
        labelNeko.text = String(numberNeko)
        labelBird.text = String(numberBird)
        labelNew.text = String(numberNew)
        
        ifColor(number: numberInu, label: labelNeko)
        ifColor(number: numberNeko, label: labelNeko)
        ifColor(number: numberBird, label: labelBird)
        ifColor(number: numberNew, label: labelNew)
        
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
    
}

