//
//  ViewController.swift
//  Delegate(exampleWithNeoAndMorphius)
//
//  Created by Сергей Голенко on 14.12.2020.
//

import UIKit

class ViewController: UIViewController {
    
    var morpheus = UIImage(named: "morpheus")
    
    
    @IBOutlet weak var imageFirstVC: UIImageView!
    
    @IBAction func chooseApill(_ sender: UIButton) {
    }
    
    @IBOutlet weak var chooseApill: UIButton!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1)
        loadMorphiusPicture()
    updateTitleButton()
    
    }
    
    
    
    func loadMorphiusPicture(){
        self.imageFirstVC.image = morpheus
    }
    
    func updateTitleButton(){
        self.chooseApill.titleLabel?.text = "выбери таблетку"
    }


}

