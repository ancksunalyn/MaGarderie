//  maGarderie
//  Created by Evelyn Andrade on 17-09-21.
//  Copyright © 2017 Evelyn Andrade. All rights reserved.
//

import UIKit

class Niveau2Controller: UIViewController
{
    
    @IBOutlet weak var back_1: UIView!
    @IBOutlet weak var front_1: UIView!
    @IBOutlet weak var back_2: UIView!
    @IBOutlet weak var front_2: UIView!
    @IBOutlet weak var back_3: UIView!
    @IBOutlet weak var front_3: UIView!
    @IBOutlet weak var back_4: UIView!
    @IBOutlet weak var front_4: UIView!
    @IBOutlet weak var back_5: UIView!
    @IBOutlet weak var front_5: UIView!
    @IBOutlet weak var back_6: UIView!
    @IBOutlet weak var front_6: UIView!
    @IBOutlet weak var back_7: UIView!
    @IBOutlet weak var front_7: UIView!
    @IBOutlet weak var back_8: UIView!
    @IBOutlet weak var front_8: UIView!
    @IBOutlet weak var back_9: UIView!
    @IBOutlet weak var front_9: UIView!
    @IBOutlet weak var back_10: UIView!
    @IBOutlet weak var front_10: UIView!
    @IBOutlet weak var back_11: UIView!
    @IBOutlet weak var front_11: UIView!
    @IBOutlet weak var back_12: UIView!
    @IBOutlet weak var front_12: UIView!
    @IBOutlet weak var back_13: UIView!
    @IBOutlet weak var front_13: UIView!
    @IBOutlet weak var back_14: UIView!
    @IBOutlet weak var front_14: UIView!
    @IBOutlet weak var back_15: UIView!
    @IBOutlet weak var front_15: UIView!
    @IBOutlet weak var back_16: UIView!
    @IBOutlet weak var front_16: UIView!
    @IBOutlet weak var back_17: UIView!
    @IBOutlet weak var front_17: UIView!
    @IBOutlet weak var back_18: UIView!
    @IBOutlet weak var front_18: UIView!
    @IBOutlet weak var back_19: UIView!
    @IBOutlet weak var front_19: UIView!
    @IBOutlet weak var back_20: UIView!
    @IBOutlet weak var front_20: UIView!
    
    @IBOutlet weak var imgView1: UIImageView!
    @IBOutlet weak var imgView2: UIImageView!
    @IBOutlet weak var imgView3: UIImageView!
    @IBOutlet weak var imgView4: UIImageView!
    @IBOutlet weak var imgView5: UIImageView!
    @IBOutlet weak var imgView6: UIImageView!
    @IBOutlet weak var imgView7: UIImageView!
    @IBOutlet weak var imgView8: UIImageView!
    @IBOutlet weak var imgView9: UIImageView!
    @IBOutlet weak var imgView10: UIImageView!
    @IBOutlet weak var imgView11: UIImageView!
    @IBOutlet weak var imgView12: UIImageView!
    @IBOutlet weak var imgView13: UIImageView!
    @IBOutlet weak var imgView14: UIImageView!
    @IBOutlet weak var imgView15: UIImageView!
    @IBOutlet weak var imgView16: UIImageView!
    @IBOutlet weak var imgView17: UIImageView!
    @IBOutlet weak var imgView18: UIImageView!
    @IBOutlet weak var imgView19: UIImageView!
    @IBOutlet weak var imgView20: UIImageView!
    
    @IBOutlet weak var card_01: UIView!
    @IBOutlet weak var card_02: UIView!
    @IBOutlet weak var card_03: UIView!
    @IBOutlet weak var card_04: UIView!
    @IBOutlet weak var card_05: UIView!
    @IBOutlet weak var card_06: UIView!
    @IBOutlet weak var card_07: UIView!
    @IBOutlet weak var card_08: UIView!
    @IBOutlet weak var card_09: UIView!
    @IBOutlet weak var card_10: UIView!
    @IBOutlet weak var card_11: UIView!
    @IBOutlet weak var card_12: UIView!
    @IBOutlet weak var card_13: UIView!
    @IBOutlet weak var card_14: UIView!
    @IBOutlet weak var card_15: UIView!
    @IBOutlet weak var card_16: UIView!
    @IBOutlet weak var card_17: UIView!
    @IBOutlet weak var card_18: UIView!
    @IBOutlet weak var card_19: UIView!
    @IBOutlet weak var card_20: UIView!
    
    @IBOutlet weak var reset: UIView!
    @IBOutlet weak var resetImage: UIImageView!
    @IBOutlet weak var logo: UIImageView!
    
    
    var arrayOfImageViews: [UIImageView]!
    var arrayOfAnimalNames = [String]()
    var arrayOfRandomAnimalNames = [String]()
    var arrayOfChosenCards = [String]()
    var arrayOfCards = [UIView]()
    
    var arrayOfShowingBacks = [UIView]()
    var arrayOfHidingFronts = [UIView]()
    
    var cards: [UIView]!
    
    var counter = 0
    
    //------------------------------------
    override func viewDidLoad()
    {
        super.viewDidLoad()
        cards = [card_01, card_02, card_03, card_04, card_05, card_06, card_07, card_08, card_09, card_10, card_11, card_12, card_13, card_14, card_15, card_16, card_17, card_18, card_19, card_20]
        arrayOfImageViews = [imgView1, imgView2, imgView3, imgView4, imgView5, imgView6, imgView7, imgView8, imgView9, imgView10, imgView11, imgView12, imgView13, imgView14, imgView15, imgView16, imgView17, imgView18, imgView19, imgView20]
        arrayOfAnimalNames = ["abeille.png", "abeille.png", "baleine.png", "baleine.png", "coccinelle.png", "coccinelle.png", "cochon.png", "cochon.png", "elephant.png", "elephant.png", "girafe.png", "girafe.png", "grenouille.png", "grenouille.png", "poulpe.png", "poulpe.png", "tortue.png", "tortue.png", "vache.png", "vache.png"]
        randomAnimals ()
        setImagesToCards()
    }
    //------------------------------------
    @IBAction func showCard(_ sender: UIButton)
    {
        if arrayOfHidingFronts.count == 2
        {
            return
        }
        switch sender.tag
        {
        case 0:
            flipCard(from: front_1, to: back_1)
            arrayOfCards.append(card_01)
            arrayOfHidingFronts.append(front_1)
            arrayOfShowingBacks.append(back_1)
        case 1:
            flipCard(from: front_2, to: back_2)
            arrayOfCards.append(card_02)
            arrayOfHidingFronts.append(front_2)
            arrayOfShowingBacks.append(back_2)
            
        case 2:
            flipCard(from: front_3, to: back_3)
            arrayOfCards.append(card_03)
            arrayOfHidingFronts.append(front_3)
            arrayOfShowingBacks.append(back_3)
            
        case 3:
            flipCard(from: front_4, to: back_4)
            arrayOfCards.append(card_04)
            arrayOfHidingFronts.append(front_4)
            arrayOfShowingBacks.append(back_4)
            
        case 4:
            flipCard(from: front_5, to: back_5)
            arrayOfCards.append(card_05)
            arrayOfHidingFronts.append(front_5)
            arrayOfShowingBacks.append(back_5)
            
        case 5:
            flipCard(from: front_6, to: back_6)
            arrayOfCards.append(card_06)
            arrayOfHidingFronts.append(front_6)
            arrayOfShowingBacks.append(back_6)
            
        case 6:
            flipCard(from: front_7, to: back_7)
            arrayOfCards.append(card_07)
            arrayOfHidingFronts.append(front_7)
            arrayOfShowingBacks.append(back_7)
            
        case 7:
            flipCard(from: front_8, to: back_8)
            arrayOfCards.append(card_08)
            arrayOfHidingFronts.append(front_8)
            arrayOfShowingBacks.append(back_8)
            
        case 8:
            flipCard(from: front_9, to: back_9)
            arrayOfCards.append(card_09)
            arrayOfHidingFronts.append(front_9)
            arrayOfShowingBacks.append(back_9)
            
        case 9:
            flipCard(from: front_10, to: back_10)
            arrayOfCards.append(card_10)
            arrayOfHidingFronts.append(front_10)
            arrayOfShowingBacks.append(back_10)
            
        case 10:
            flipCard(from: front_11, to: back_11)
            arrayOfCards.append(card_11)
            arrayOfHidingFronts.append(front_11)
            arrayOfShowingBacks.append(back_11)
            
        case 11:
            flipCard(from: front_12, to: back_12)
            arrayOfCards.append(card_12)
            arrayOfHidingFronts.append(front_12)
            arrayOfShowingBacks.append(back_12)
            
        case 12:
            flipCard(from: front_13, to: back_13)
            arrayOfCards.append(card_13)
            arrayOfHidingFronts.append(front_13)
            arrayOfShowingBacks.append(back_13)
            
        case 13:
            flipCard(from: front_14, to: back_14)
            arrayOfCards.append(card_14)
            arrayOfHidingFronts.append(front_14)
            arrayOfShowingBacks.append(back_14)
            
        case 14:
            flipCard(from: front_15, to: back_15)
            arrayOfCards.append(card_15)
            arrayOfHidingFronts.append(front_15)
            arrayOfShowingBacks.append(back_15)
            
        case 15:
            flipCard(from: front_16, to: back_16)
            arrayOfCards.append(card_16)
            arrayOfHidingFronts.append(front_16)
            arrayOfShowingBacks.append(back_16)
            
        case 16:
            flipCard(from: front_17, to: back_17)
            arrayOfCards.append(card_17)
            arrayOfHidingFronts.append(front_17)
            arrayOfShowingBacks.append(back_17)
            
        case 17:
            flipCard(from: front_18, to: back_18)
            arrayOfCards.append(card_18)
            arrayOfHidingFronts.append(front_18)
            arrayOfShowingBacks.append(back_18)
            
        case 18:
            flipCard(from: front_19, to: back_19)
            arrayOfCards.append(card_19)
            arrayOfHidingFronts.append(front_19)
            arrayOfShowingBacks.append(back_19)
            
        case 19:
            flipCard(from: front_20, to: back_20)
            arrayOfCards.append(card_20)
            arrayOfHidingFronts.append(front_20)
            arrayOfShowingBacks.append(back_20)
            
        default:
            break
        }
        arrayOfChosenCards.append(arrayOfRandomAnimalNames[sender.tag])
        verification()
    }
    //------------------------------------
    func flipCard(from: UIView, to: UIView)
    {
        let transitionOptions: UIViewAnimationOptions =
            [.transitionFlipFromRight, .showHideTransitionViews]
        UIView.transition(with: from, duration: 1.0, options: transitionOptions,
                          animations: {
                            from.isHidden = true
        })
        UIView.transition(with: to, duration: 1.0, options: transitionOptions,
                          animations: {
                            to.isHidden = false
        })
    }
    //------------------------------------
    func setImagesToCards()
    {
        var number = 0
        for imgView in arrayOfImageViews
        {
            imgView.image = UIImage(named: arrayOfRandomAnimalNames[number])
            number = number + 1
        }
    }
    //------------------------------------
    func randomAnimals()
    {
        let numberOfAnimals = arrayOfAnimalNames.count
        for _ in 1...numberOfAnimals
        {
            let randomNumber = Int(arc4random_uniform(UInt32(arrayOfAnimalNames.count)))
            arrayOfRandomAnimalNames.append(arrayOfAnimalNames[randomNumber])
            arrayOfAnimalNames.remove(at: randomNumber)
        }
    }
    //------------------------------------
    func resetCards()
    {
        if arrayOfHidingFronts.count == 2
        {
            Timer.scheduledTimer(timeInterval: 2,
                                 target: self,
                                 selector: (#selector(reFlip)),
                                 userInfo: nil,
                                 repeats: false)
        }
    }
    //------------------------------------
    func verification()
    {
        if arrayOfChosenCards.count == 2
        {
            if arrayOfChosenCards[0] == arrayOfChosenCards[1]
            {
                Timer.scheduledTimer(timeInterval: 2,
                                     target: self,
                                     selector: (#selector(hideCards)),
                                     userInfo: nil,
                                     repeats: false)
                counter = counter + 1
            }
            else
            {
                arrayOfCards = []
            }
            arrayOfChosenCards = []
        }
        resetCards()
    }
    //------------------------------------
    @objc func hideCards()
    {
        arrayOfCards[0].isHidden = true
        arrayOfCards[1].isHidden = true
        arrayOfCards = []
    }
    //------------------------------------
    @objc func reFlip()
    {
        for index in 0..<arrayOfShowingBacks.count
        {
            flipCard(from: arrayOfShowingBacks[index], to: arrayOfHidingFronts[index])
        }
        if counter == 10
        {
            reset.isHidden = false
        }
        arrayOfShowingBacks = []
        arrayOfHidingFronts = []
    }
    //------------------------------------
    func returnToFirst() {
        if counter == 10 {
            Timer.scheduledTimer(timeInterval: 2,
                                 target: self,
                                 selector: (#selector(animation)),
                                 userInfo: nil,
                                 repeats: true)
            
            Timer.scheduledTimer(timeInterval: 9,
                                 target: self,
                                 selector: (#selector(go)),
                                 userInfo: nil,
                                 repeats: false)
        }
    }
    //------------------------------------
    @objc func animation() {
        UIView.animate(withDuration: 0.7, animations: {
            self.doAnimation(to: 434)
        }, completion: {
            (value: Bool) in
            
            UIView.animate(withDuration: 0.7, animations: {
                self.doAnimation(to: 284)
            })
            
        })
    }
    //------------------------------------
    func doAnimation(to: CGFloat) {
        reset.isHidden = false
        reset.frame.size.width = to
        reset.frame.size.height = to
        //fondecran.isHidden = true
        logo.isHidden = true
        resetImage.frame.size.width = to
        resetImage.frame.size.height = to
    }
    //------------------------------------
    @objc func go () {
        performSegue(withIdentifier: "retourDuNiveau", sender: nil)
    }
  
}


