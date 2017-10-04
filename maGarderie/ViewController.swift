//  maGarderie
//  Created by Evelyn Andrade on 17-09-21.
//  Copyright © 2017 Evelyn Andrade. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    @IBOutlet weak var btNiveau1: UIButton!
    @IBOutlet weak var btNiveau2: UIButton!
    @IBOutlet weak var btNiveau3: UIButton!
  
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        animationOut()
        animationIn()
    }
    
    func animationOut () {
        UIView.animate(withDuration: 1, delay: 0, options: [.curveEaseInOut, .allowUserInteraction], animations:
            {self.btNiveau1.transform = CGAffineTransform(scaleX:2, y:2);
                self.btNiveau2.transform = CGAffineTransform(scaleX:2, y:2);
                self.btNiveau3.transform = CGAffineTransform(scaleX:2, y:2)
            },
            completion: {(true) in self.animationIn()})
    }
    
    func animationIn () {
        UIView.animate(withDuration: 1, delay: 0, options: [.curveEaseInOut, .allowUserInteraction], animations:
            {self.btNiveau1.transform = CGAffineTransform(scaleX:1, y:1);
                self.btNiveau2.transform = CGAffineTransform(scaleX:1, y:1);
                self.btNiveau3.transform = CGAffineTransform(scaleX:1, y:1);
            },
           completion: {(true) in self.animationOut()})
    }
}
