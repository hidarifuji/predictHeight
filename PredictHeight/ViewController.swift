    //
    //  ViewController.swift
    //  PredictHeight
    //
    //  Created by SATO_YASUTAKA on 2022/03/21.
    //

    import UIKit


    class ViewController: UIViewController {
        @IBOutlet weak var sexTextField: UITextField!
        @IBOutlet weak var FatherTextField: UITextField!
        @IBOutlet weak var MotherTextField: UITextField!
        @IBOutlet weak var PredictHeightLabel: UILabel!        
        
        
        override func viewDidLoad() {
            super.viewDidLoad()
            // Do any additional setup after loading the view.
            sexTextField.placeholder = "男→1、女→2"
            FatherTextField.placeholder = "父親の身長(cm)"
            MotherTextField.placeholder = "母親の身長(cm)"
            
        }
        
        @IBAction func buttonAction(_ sender: Any) {
                 let DoubleS = Double(sexTextField.text!)
                 let DoubleF = Double(FatherTextField.text!)
                 let DoubleM = Double(MotherTextField.text!)
            PredictHeightLabel.text = calculation(gender:DoubleS!,heightF:DoubleF!,heightM:DoubleM!)
              
             }
             
        func calculation(gender:Double , heightF:Double , heightM:Double)->String{
                 let G = gender
                 let F = heightF
                 let M = heightM
            
                if ( G == 1 ) {
                    var result = (F+M+13)/2+2
                    result = ceil(result)
                    return result.description
                } else if ( G == 2 ) {
                    var result = (F+M-13)/2+2
                    result = ceil(result)
                    return result.description
                }else{
                    var result = (F+M-13)/0
                    result = ceil(result)
                    return result.description
                }
             
            }
        
        override var shouldAutorotate: Bool {
            return false
        }

        override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
            return .portrait
        }
      
    }

