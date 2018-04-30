//
//  ViewController2.swift
//  iOS_Othello_Devil_vs_Angel
//
//  Created by Yuta Yamada on 2018-04-20.
//  Copyright © 2018 Yuta Yamada. All rights reserved.
//
import UIKit

class ViewController2: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        self.view.backgroundColor = UIColor.purple
        
        
    }
    
    override var shouldAutorotate: Bool {
        return true
    }
    
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        if UIDevice.current.userInterfaceIdiom == .phone {
            return .allButUpsideDown
        } else {
            return .all
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Release any cached data, images, etc that aren't in use.
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    
    @IBOutlet weak var Coin_image: UIImageView!
    var heads: UIImage = UIImage(named:"Angel")!
    var tail: UIImage = UIImage(named:"Devil")!
    var result = Bool()

    @IBAction func Toss(_ sender: Any) {
        let random = arc4random_uniform(2)

        if random == 0{
            result = true
            Coin_image.image = heads
            self.view.backgroundColor = UIColor.black
        }else{
            result = false
            Coin_image.image = tail
            self.view.backgroundColor = UIColor.white
        }
}
}
