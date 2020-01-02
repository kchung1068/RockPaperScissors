//
//  ViewController.swift
//  RockPaperScissors
//
//  Created by Kyle Chung on 1/29/19.
//  Copyright © 2019 Kyle Chung. All rights reserved.
//

import UIKit
import SafariServices
class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    @IBOutlet var selfLabel: UILabel!
    @IBOutlet var PlayerImage: UIImageView!
    @IBOutlet var CPUImage: UIImageView!
    @IBOutlet var images: [UIImageView]!
    @IBOutlet var opponentLabel: UILabel!
    @IBOutlet var stackView: UIStackView!
    @IBOutlet var resultLabel: UILabel!
    @IBOutlet var playerScore: UILabel!
    @IBOutlet var timerLabel: UILabel!
    @IBOutlet var tapOne: UITapGestureRecognizer!
    @IBOutlet var opponentScore: UILabel!
    @IBOutlet var tapTwo: UITapGestureRecognizer!
    @IBOutlet var buttonStart: UIButton!
    
    
    var currentimage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imagePicker.delegate = self
        for image in images {
            if image.image == UIImage(named: "rockk") {
                image.tag = 0
            }
            if image.image == UIImage(named: "Scissors") {
                image.tag = 1
            }
            if image.image == UIImage(named: "Paper") {
                image.tag = 2
            }
            print(image.tag)
            
        }
    }
    let imagePicker = UIImagePickerController()
    func imageMatches() {
        if PlayerImage.image == UIImage(named: "rockk") && CPUImage.image == UIImage(named: "rockk") {
            selfLabel.text = "Rock"
            opponentLabel.text = "Rock"
            resultLabel.text = "Tie!"
        }
        if PlayerImage.image == UIImage(named: "rockk") && CPUImage.image == UIImage(named: "Scissors") {
            selfLabel.text = "Rock"
            opponentLabel.text = "Scissors"
            resultLabel.text = "You Won!"
        }
        if PlayerImage.image == UIImage(named: "rockk") && CPUImage.image == UIImage(named: "Paper") {
            selfLabel.text = "Rock"
            opponentLabel.text = "Paper"
            resultLabel.text = "You Lost."
        }
        if PlayerImage.image == UIImage(named: "Scissors") && CPUImage.image == UIImage(named: "Scissors") {
            selfLabel.text = "Scissors"
            opponentLabel.text = "Scissors"
            resultLabel.text = "Tie!"
        }
        if PlayerImage.image == UIImage(named: "Scissors") && CPUImage.image == UIImage(named: "rockk") {
            selfLabel.text = "Scissors"
            opponentLabel.text = "Rock"
            resultLabel.text = "You Lost."
        }
        if PlayerImage.image == UIImage(named: "Scissors") && CPUImage.image == UIImage(named: "Paper") {
            selfLabel.text = "Scissors"
            opponentLabel.text = "Paper"
            resultLabel.text = "You Won!"
        }
        if PlayerImage.image == UIImage(named: "Paper"), CPUImage.image == UIImage(named: "Paper") {
            selfLabel.text = "Paper"
            opponentLabel.text = "Paper"
            resultLabel.text = "Tie!"
        }
        if PlayerImage.image == UIImage(named: "Paper") && CPUImage.image == UIImage(named: "rockk") {
            selfLabel.text = "Paper"
            opponentLabel.text = "Rock"
            resultLabel.text = "You Won!"
        }
        if PlayerImage.image == UIImage(named: "Paper") && CPUImage.image == UIImage(named: "Scissors") {
            selfLabel.text = "Paper"
            opponentLabel.text = "Scissors"
            resultLabel.text = "You Lost."
        }
    }
    func imagetagMatches() {
        if PlayerImage.tag == 0 && CPUImage.image == UIImage(named: "rockk") {
            resultLabel.text = "Tie!"
            selfLabel.text = "Rock"
        }
        if PlayerImage.tag == 0 && CPUImage.image == UIImage(named: "Scissors") {
            resultLabel.text = "You Won!"
            selfLabel.text = "Rock"
        }
        if PlayerImage.tag == 0 && CPUImage.image == UIImage(named: "Paper") {
            resultLabel.text = "You Lost."
            selfLabel.text = "Rock"
        }
        if PlayerImage.tag == 0 && CPUImage.tag == 0 {
            resultLabel.text = "Tie!"
            selfLabel.text = "Rock"
            opponentLabel.text = "Rock"
        }
        if PlayerImage.tag == 0 && CPUImage.tag == 1 {
            resultLabel.text = "You Won!"
            selfLabel.text = "Rock"
            opponentLabel.text = "Scissors"
        }
        if PlayerImage.tag == 0 && CPUImage.tag == 2 {
            resultLabel.text = "You Lost."
            selfLabel.text = "Rock"
            opponentLabel.text = "Paper"
        }
        
        
        if PlayerImage.tag == 1 && CPUImage.image == UIImage(named: "rockk") {
            resultLabel.text = "You Lost."
            selfLabel.text = "Scissors"
        }
        if PlayerImage.tag == 1 && CPUImage.image == UIImage(named: "Scissors") {
            resultLabel.text = "Tie!"
            selfLabel.text = "Scissors"
        }
        if PlayerImage.tag == 1 && CPUImage.image == UIImage(named: "Paper") {
            resultLabel.text = "You Won!"
            selfLabel.text = "Scissors"
        }
        if PlayerImage.tag == 1 && CPUImage.tag == 0 {
            resultLabel.text = "You Lost."
            selfLabel.text = "Scissors"
            opponentLabel.text = "Rock"
        }
        if PlayerImage.tag == 1 && CPUImage.tag == 1 {
            resultLabel.text = "Tie!"
            selfLabel.text = "Scissors"
            opponentLabel.text = "Scissors"
        }
        if PlayerImage.tag == 1 && CPUImage.tag == 2 {
            resultLabel.text = "You Won!"
            selfLabel.text = "Scissors"
            opponentLabel.text = "Paper"
        }
        
        if PlayerImage.tag == 2 && CPUImage.image == UIImage(named: "rockk") {
            resultLabel.text = "You Won!"
            selfLabel.text = "Paper"
        }
        if PlayerImage.tag == 2 && CPUImage.image == UIImage(named: "Scissors") {
            resultLabel.text = "You Lost."
            selfLabel.text = "Paper"
        }
        if PlayerImage.tag == 2 && CPUImage.image == UIImage(named: "Paper") {
            resultLabel.text = "Tie!"
            selfLabel.text = "Paper"
        }
        if PlayerImage.tag == 2 && CPUImage.tag == 0 {
            resultLabel.text = "You Won!"
            selfLabel.text = "Paper"
            opponentLabel.text = "Rock"
        }
        if PlayerImage.tag == 2 && CPUImage.tag == 1 {
            resultLabel.text = "You Lost."
            selfLabel.text = "Paper"
            opponentLabel.text = "Scissors"
        }
        if PlayerImage.tag == 2 && CPUImage.tag == 2 {
            resultLabel.text = "Tie!"
            selfLabel.text = "Paper"
            opponentLabel.text = "Paper"
        }
    }
    func opponent() {
        if CPUImage.image == UIImage(named: "rockk") {
            opponentLabel.text = "Rock"
        }
        if CPUImage.image == UIImage(named: "Scissors") {
            opponentLabel.text = "Scissors"
        }
        if CPUImage.image == UIImage(named: "Paper") {
            opponentLabel.text = "Paper"
        }
    }
    
    var time = 3
    var timer = Timer()
    var playerscore = 0
    var opponentscore = 0
    let itemimages = ["rockk": UIImage(named: "rockk"), "Scissors": UIImage(named: "Scissors"), "Paper" : UIImage(named: "Paper")]
    var items = ["Rock", "Scissors", "Paper"]
    var newimages = [UIImage(named: "rockk"), UIImage(named: "Scissors"), UIImage(named: "Paper")]
    var numbers = [0,1,2]
    let imageandnumbers = [0: UIImage(named: "rockk"), 1: UIImage(named: "Scissors"), 2: UIImage(named: "Paper") ]
    
    @IBAction func rockpaper(_ sender: UITapGestureRecognizer) {
        print("In Rock Paper")
        buttonStart.isEnabled = true
        let selectedpoint = sender.location(in: stackView)
        for image in images {
            if image.frame.contains(selectedpoint) {
                if image.image == UIImage(named: "rockk") {
                    image.tag = 0
                }
                if image.image == UIImage(named: "Scissors") {
                    image.tag = 1
                }
                if image.image == UIImage(named: "Paper") {
                    image.tag = 2
                }
                PlayerImage.image = image.image
                PlayerImage.alpha = 1
                CPUImage.alpha = 1
                timerLabel.text = ""
                timer.invalidate()
                time = 3
                PlayerImage.tag = image.tag
                
                print(PlayerImage.tag)
                print(image.tag)
            }
            let randomnumber = Int.random(in: 0..<3)
            let randomimage = images[randomnumber]
            
            
            CPUImage.image = randomimage.image
            CPUImage.tag = randomimage.tag
            imageMatches()
            imagetagMatches()
            opponent()
        }
        if resultLabel.text == "You Lost." {
            opponentscore += 1
            opponentScore.text = "\(opponentscore)"
        }
        if resultLabel.text == "You Won!" {
            playerscore += 1
            playerScore.text = "\(playerscore)"
        }
    }
    @IBAction func safariButton(_ sender: Any) {
        let myURL = URL(string: "https://www.wikihow.com/Play-Rock,-Paper,-Scissors")!
        let svc = SFSafariViewController(url: myURL)
        self.present(svc, animated: true, completion: nil)
    }
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        imagePicker.dismiss(animated: true) {
            let selectedImage = info[UIImagePickerController.InfoKey.originalImage] as! UIImage
            self.currentimage.image = selectedImage
            
            }
    }
    @IBAction func doubleTap(_ sender: UITapGestureRecognizer) {
        print("In Double Tap")
        
        let selectedpoint = sender.location(in: stackView)
        imagePicker.sourceType = UIImagePickerController.SourceType.photoLibrary
        
        CPUImage.image = UIImage()
        PlayerImage.image = UIImage()
        opponentLabel.text = ""
        selfLabel.text = ""
        if resultLabel.text == "You Won!" {
            opponentscore += 0
            playerscore -= 1
            resultLabel.text = ""
            playerScore.text = "\(playerscore)"
        }
        if resultLabel.text == "You Lost."{
            opponentscore -= 1
            playerscore -= 0
            resultLabel.text = ""
            opponentScore.text = "\(opponentscore)"
        }
       resultLabel.text = ""
        for selectedImageView in images {
            if selectedImageView.frame.contains(selectedpoint) {
                currentimage = selectedImageView
                
                
                present(imagePicker, animated: true, completion: nil)
                
                
            }
        }
    }
    
    
    
    @IBAction func longPress(_ sender: UILongPressGestureRecognizer) {
        print("In Long Press \(sender.state.rawValue)")
        if sender.state == UIGestureRecognizer.State.began {
        
        imagePicker.sourceType = UIImagePickerController.SourceType.camera
        let selectedpoint = sender.location(in: stackView)
        CPUImage.image = UIImage()
        PlayerImage.image = UIImage()
        opponentLabel.text = ""
        selfLabel.text = ""
        if resultLabel.text == "You Won!" {
            opponentscore += 0
            playerscore -= 1
            resultLabel.text = ""
            playerScore.text = "\(playerscore)"
        }
        if resultLabel.text == "You Lost."{
            opponentscore -= 1
            playerscore -= 0
            resultLabel.text = ""
            opponentScore.text = "\(opponentscore)"
        }
        resultLabel.text = ""


        for selectedImageView in images {
            if selectedImageView.frame.contains(selectedpoint) {
                currentimage = selectedImageView
                present(imagePicker, animated: true, completion: nil)
            }
            }
    }
    }
    @IBAction func startButton(_ sender: Any) {
        resultLabel.text = ""
        buttonStart.isEnabled = false
        timerLabel.text = "\(time)"
        CPUImage.image = UIImage()
        CPUImage.alpha = 0
        opponentLabel.text = ""
        selfLabel.text = ""
        PlayerImage.alpha = 0
        timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true, block: { (timer) in
            self.time -= 1
            self.timerLabel.text = "\(self.time)"
            if self.time == 0 {
                timer.invalidate()
                let randomnumber = Int.random(in: 0..<3)
                let newimages = [UIImage(named: "rockk"), UIImage(named: "Scissors"), UIImage(named: "Paper")]
                self.time = 3
                self.resultLabel.text = "You Lost."
                self.CPUImage.alpha = 1
                self.CPUImage.image = newimages[randomnumber]
                self.PlayerImage.alpha = 0
                self.opponent()
                if self.resultLabel.text == "You Lost." {
                    self.opponentscore += 1
                    self.opponentScore.text = "\(self.opponentscore)"
                }
                if self.resultLabel.text == "You Won!" {
                    self.playerscore += 1
                    self.playerScore.text = "\(self.playerscore)"
                }
                self.buttonStart.isEnabled = true
            }
        })
    }
    
    @IBAction func normal(_ sender: Any) {
        
        for image in images {
            let random3 = Int.random(in: 0..<3)
            if image.tag == 0 {
                image.image = UIImage(named: "rockk")
            }
            if image.tag == 1 {
                image.image = UIImage(named: "Scissors")
            }
            if image.tag == 2 {
                image.image = UIImage(named: "Paper")
            }
            
        }
    }
    
}
