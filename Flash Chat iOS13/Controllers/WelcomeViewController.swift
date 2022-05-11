//
//  WelcomeViewController.swift


import UIKit
import CLTypingLabel

class WelcomeViewController: UIViewController {

    @IBOutlet weak var titleLabel: CLTypingLabel!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        titleLabel.text = "⚡️FlashChat"
    
        //Laebl animation using for loop :-
//        titleLabel.text = ""
//        var charIndex = 0.0
//        let titleText = "⚡️FlashChat"
//        for letter in titleText
//        {
//            print("-")
//            print(0.1*charIndex)
//            print(letter)
//            Timer.scheduledTimer(withTimeInterval: 0.1 * charIndex, repeats: false)
//            { timer in
//                self.titleLabel.text?.append(letter)
//            }
//            charIndex += 1
//        }
//
//    }
    
    }
}
