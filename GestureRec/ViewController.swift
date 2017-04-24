//
//  ViewController.swift
//  GestureRec
//
//  Created by Athitha Anantharamu on 11/4/16.
//  Copyright © 2016 Athitha Anantharamu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var img: UIImageView!
   

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //img.isUserInteractionEnabled = true
        let tap = UITapGestureRecognizer(target: self, action: #selector(doubleTap))  //UI Tap Gesture Coding
        tap.numberOfTapsRequired = 2
        img.addGestureRecognizer(tap)

        
        let Swipeleft = UISwipeGestureRecognizer(target: self, action:#selector(self.GestureAction))
        Swipeleft.direction=UISwipeGestureRecognizerDirection.left
        view.addGestureRecognizer(Swipeleft)
        
        let SwipeRight = UISwipeGestureRecognizer(target: self, action: #selector(self.GestureAction))
        SwipeRight.direction=UISwipeGestureRecognizerDirection.right
        img.addGestureRecognizer(SwipeRight)
        
    }
    func doubleTap(sender: UITapGestureRecognizer) {
        print("double tapped")
        let alert1 = UIAlertController(title: "6692345893", message: "Customer support number", preferredStyle: .actionSheet)
        let ok = UIAlertAction(title: "OKAY" , style: .default, handler: {action in print("ok")})
        alert1.addAction(ok)
        
        if let popup = alert1.popoverPresentationController
        {
        popup.sourceView = img
            popup.sourceRect = img.bounds
            
        }
        self.present(alert1, animated:true, completion: nil)
    }
    
    
    func GestureAction(sender: UISwipeGestureRecognizer) {
        switch sender.direction {
        case UISwipeGestureRecognizerDirection.left:
            performSegue(withIdentifier: "segueitem", sender: nil)
            break
        case UISwipeGestureRecognizerDirection.right:
            performSegue(withIdentifier: "seguecup", sender: nil)
            break
        default:
            print("no swipe")
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

