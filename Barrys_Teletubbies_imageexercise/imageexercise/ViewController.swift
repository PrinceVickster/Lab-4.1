//
//  ViewController.swift
//  imageexercise
//
//  Created by Barry Ip on 05/10/2018.
//  Copyright © 2018 Barry Ip. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

//  declare variables
    var displayedPicture = UIImageView(image: nil)
    var number  = 0
    var sum = 0

//define screen bounds
    let W = UIScreen.main.bounds.width
    let H = UIScreen.main.bounds.height
    
    @IBOutlet weak var outputlabel: UILabel!
    
    @IBOutlet weak var runningSum: UILabel!
    
//  generate a random number and display on screen as well as display running sum
    func generateRanNum() {
        let number = Int.random(in: 0 ... 100)
        outputlabel.text = String(number)
        sum = sum + number
        runningSum.text = String (sum)
    }
    
    
//  button to allow user to display a random image from library
    @IBAction func randomImage(_ sender: Any) {
        let RanImageNum = Int.random(in: 1...3)
        switch (RanImageNum) {
            case 1: displayedPicture.image = UIImage(named: "pig.png")
            displayedPicture.frame = CGRect(x:W*0.15, y: H*0.25, width: W*0.7, height: H*0.25)
            self.view.addSubview(displayedPicture)
            generateRanNum()
            break
            
            case 2: displayedPicture.image = UIImage(named: "teletubbies.jpg")
            displayedPicture.frame = CGRect(x:W*0.15, y: H*0.25, width: W*0.7, height: H*0.25)
            self.view.addSubview(displayedPicture)
            generateRanNum()
            break
        
            case 3: displayedPicture.image = UIImage(named: "bee1.png")
            displayedPicture.frame = CGRect(x:W*0.25, y: H*0.25, width: W*0.5, height: H*0.25)
            self.view.addSubview(displayedPicture)
            generateRanNum()
            break
            
        default: displayedPicture.image = nil
        }
      
    }
    
//button to clear image from screen
    @IBAction func clearscreen(_ sender: Any) {
        displayedPicture.image = nil
        generateRanNum()
    }
    
//    button to show image1
    @IBAction func image1(_ sender: Any) {
        
        displayedPicture.image = UIImage(named: "pig.png")
        
        displayedPicture.frame = CGRect(x:W*0.15, y: H*0.25, width: W*0.7, height: H*0.25)
        
        self.view.addSubview(displayedPicture)
        generateRanNum()
    }
    
//    button to show image2
    @IBAction func image2(_ sender: Any) {
        displayedPicture.image = UIImage(named: "teletubbies.jpg")
        
        displayedPicture.frame = CGRect(x:W*0.15, y: H*0.25, width: W*0.7, height: H*0.25)
        
        self.view.addSubview(displayedPicture)
        generateRanNum()
    }
    
//    button to show image3
    @IBAction func image3(_ sender: Any) {
        displayedPicture.image = UIImage(named: "bee1.png")//change things
        
        displayedPicture.frame = CGRect(x:W*0.25, y: H*0.25, width: W*0.5, height: H*0.25)
        
        self.view.addSubview(displayedPicture)
        generateRanNum()
    }
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

