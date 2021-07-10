//
//  ViewController.swift
//  RocketFlyer
//
//  Created by Anshul Laddha on 07/07/21.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    @IBOutlet weak var flyLbl: UILabel!
    @IBOutlet weak var cloudView: UIImageView!
    @IBOutlet weak var rocketView: UIImageView!
    @IBOutlet weak var bottomView: UIView!
    @IBOutlet weak var flyBtn: UIButton!
    @IBOutlet weak var firstBgView: UIImageView!
    
    var player: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let path = Bundle.main.path(forResource: "hustle-on", ofType: "wav")!
        let url = URL(fileURLWithPath: path)
        do {
            player = try AVAudioPlayer(contentsOf: url)
            player.prepareToPlay()
        } catch let error as NSError {
            print("Error : ", error.description)
        }
    }

    @IBAction func flyRocket(_ sender: Any) {
        print("clicked")
        bottomView.isHidden = false
        flyBtn.isHidden = true
        firstBgView.isHidden = true
        
        player.play()
        
        UIView.animate(withDuration: 2.2, animations: {
            self.rocketView.frame = CGRect(x: 0, y: 20, width: 407, height: 733)
        }) {(finished) in
            self.flyLbl.isHidden = false
        }
    }
    
}

