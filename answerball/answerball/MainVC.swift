//
//  MainVC.swift
//  answerball
//
//  Created by Oğuz Çörekçioğlu on 18.03.2021.
//

import UIKit
import AVFoundation


class MainVC: UIViewController, AVAudioPlayerDelegate {

    var audioPlayer : AVAudioPlayer?
    
    
    @IBOutlet weak var answerText: UILabel!
    var answers = [
        "I'm a not mindreader",
        "All indicators point to YES!",
        "All indicators point to NO!",
        "Watch your language",
        "It seems highly unlikely",
        "Please speak up!",
        "Yes i needed!",
        "Absulotely not !",
        "Please ask again later",
        "Seriously !",
        "That was a dumb question ?",
        "It was wondering the same thing!",
        "I can't answer that truthfully",
        "What do you think ?",
        "Omg Yes!",
        "Omg No!",
        "Terrible No!",
        "Imagine that!",
        "Really ?",
        "Did you just ask that ?",
        "Of Course",
        "Ask a higher power.",
        "The force is with you",
        "The force is not near.",
        "You are unbelievable",
        "Can i get translation please ?",
        "I'm gonna guess... NO!",
        "I'm gonna guess... YES!",
        "It would seem so.",
        "That does not seem to be true.",
        "Does a bear sh... never mind.",
        "I need a new profession!",
        "The odds are againist that.",
        "The odds are in your favor.",
        "Can we skip this one ?",
        "Ask a different question please.",
        "I'm doing good, yes I know you didn't ask.",
        "My connection to the stars was lost",
        "Do you want the truth ?",
        "I can see no answer but yes."
    ]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func motionBegan(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        getAnswerTapped(UIEvent())
    }
    
    @IBAction func getAnswerTapped(_ sender: AnyObject) {
        // AnyObject tüm sınıfların örtülü olarak uyumlu olduğu protokoldur.
        
        answerText.text = getAnswer() // getanswer burada string döndürüyor.
        answerText.isHidden = false
        playSound()
        
    }
    
    func getAnswer() -> String{
        var random = Int(arc4random_uniform(UInt32(answers.count)))
        let result = answers[random]
        return result
        
    }
    
    func playSound() {
//        Play audio file when shaken or get answered tapped
        let pathToSound = Bundle.main.path(forResource: "mixkit-toy-bell", ofType: "wav")!
        let url = URL(fileURLWithPath: pathToSound)
        do{
            audioPlayer = try AVAudioPlayer(contentsOf: url)
            audioPlayer?.play()
        }catch{
            // Error handling
            audioPlayer?.stop()
        }
        
        
    }
    
}
