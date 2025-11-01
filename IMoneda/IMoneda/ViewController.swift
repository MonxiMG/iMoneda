//
//  ViewController.swift
//  IMoneda
//
//  Created by Monse Garcia on 15/10/25.
//

import UIKit

private let moneda=Moneda()

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    //Botón Pulsar
    @IBAction func botonLanzar(_ sender: AnyObject) {
        
        let tirada = moneda.lanzar()
        
        if tirada == .cara {
                lecturaImage.text = "cara"
                imageMoneda.image = UIImage(named: "cara")
            } else {
                lecturaImage.text = "cruz"
                imageMoneda.image = UIImage(named: "cruz")
            }
        
    }
    
    
    @IBOutlet weak var imageMoneda: UIImageView!
    
    
    @IBOutlet weak var lecturaImage: UILabel!
}

