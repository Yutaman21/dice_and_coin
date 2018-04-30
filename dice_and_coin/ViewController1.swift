//
//  ViewController1.swift
//  iOS_Othello_Devil_vs_Angel
//
//  Created by Yuta Yamada on 2018-04-20.
//  Copyright © 2018 Yuta Yamada. All rights reserved.
//
import UIKit

class ViewController1: UIViewController {
    
    
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
    
    @IBOutlet weak var Dice_image: UIImageView!
    var image1 : UIImage = UIImage(named:"1")!
    var image2 : UIImage = UIImage(named:"2")!
    var image3 : UIImage = UIImage(named:"3")!
    var image4 : UIImage = UIImage(named:"4")!
    var image5 : UIImage = UIImage(named:"5")!
    var image6 : UIImage = UIImage(named:"6")!
    var imgArray: [UIImage] = []
   
    @IBAction func Roll(_ sender: Any) {
        imgArray = [image1,image2,image3,image4,image5,image6]
        let roll = Int(arc4random_uniform(6))
        Dice_image.image = imgArray[roll]
    }
    
}

