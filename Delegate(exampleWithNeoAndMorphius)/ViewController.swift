//
//  ViewController.swift
//  Delegate(exampleWithNeoAndMorphius)
//
//  Created by Сергей Голенко on 14.12.2020.
//

import UIKit

class ViewController: UIViewController {
    
    var morpheus = UIImage(named: "morpheus")
    
    @IBOutlet weak var trueOrFalse: UILabel!
    @IBOutlet weak var imageFirstVC: UIImageView!
    @IBAction func chooseApill(_ sender: UIButton) {
    }
    @IBOutlet weak var chooseApill: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        loadMorphiusPicture()
        trueOrFalse.textColor = #colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1)
        trueOrFalse.text = "Истина или иллюзия?"
    
    }
    
    
    func loadMorphiusPicture(){
        self.imageFirstVC.image = morpheus
    }
    
    //
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "0000"{
            if let selectVC = segue.destination as? SecondViewController {
                selectVC.delegate = self
            }
        }
    }
}


extension ViewController:MatrixxDelegate{
    func updatePictureAndLabel(text: String, picture: UIImage?) {
        trueOrFalse.text = text
        imageFirstVC.image = picture
    }
    

    
    
    
}

