//
//  SecondViewController.swift
//  Delegate(exampleWithNeoAndMorphius)
//
//  Created by Сергей Голенко on 14.12.2020.
//

import UIKit

class SecondViewController: UIViewController {
    
    var delegate : MatrixxDelegate?
    
    
    @IBOutlet weak var redButton: UIButton!
    @IBOutlet weak var blueButton: UIButton!
    
    private let trueText = "Вы узнали истину"
    private let falseText = "Вы живете в иллюзии"
    
   private let neoPicture = UIImage(named:"neo")
   private let agentSmithPicture = UIImage(named: "agentSmith")
    
    @IBAction func redPiple(_ sender: UIButton) {
        self.delegate?.updatePictureAndLabel(text: falseText, picture: agentSmithPicture)
        navigationController?.popViewController(animated: true)
    }
    
    @IBAction func bluePiple(_ sender: UIButton) {
        self.delegate?.updatePictureAndLabel(text: trueText, picture:neoPicture)
        navigationController?.popViewController(animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup(button: redButton)
        setup(button: blueButton)
     
    }
    
    func setup(button: UIButton) {
        button.layer.cornerRadius = 50
        button.layer.borderWidth = 10
        button.layer.borderColor = UIColor.clear.cgColor
    }
    
    
    

}
