//
//  ViewController.swift
//  Prework_TruongDang
//
//  Created by Đặng Đức Trường on 1/7/22.
//
import UIKit

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // Pick a random color
    func RandomColor() -> UIColor{
        let randomR:CGFloat = CGFloat(drand48())
        let randomG:CGFloat = CGFloat(drand48())
        let randomB:CGFloat = CGFloat(drand48())
        return UIColor(red: randomR, green: randomG, blue: randomB, alpha: 1.0)
    }
    
    // Background view statement
    @IBOutlet var Backgr: UIView!
 
    // Text string statement
    @IBOutlet weak var TextLabel: UILabel!
    
    // Text field statement
    @IBOutlet weak var TextField: UITextField!
    
    // Set a default setting
    func DeFault(){
        TextLabel.text = "Hello from Truong !!!"
        Backgr.backgroundColor = UIColor(red: 1, green: 224/255, blue: 189/255, alpha: 1.0)
        TextLabel.textColor = UIColor.black
    }
    
    // Change text's color
    @IBAction func ChangeTextColor(_ sender: Any) {
        if TextLabel.textColor == UIColor.black {
            TextLabel.textColor = UIColor.yellow
        }
        else {TextLabel.textColor = UIColor.black}
    }
    
    // Change background's color
    @IBAction func ChangeViewColor(_ sender: Any) {
        Backgr.backgroundColor = RandomColor()
    }
    
    // Change text to "Goodbye"
    @IBAction func ChangeTextGoodbye(_ sender: Any) {
        if TextLabel.text!.contains("Hello"){
            TextLabel.text = "Goodbye World :("
        }
        else {TextLabel.text = "Hello from Truong !!!"}
    }
    
    // Reset to default setting
    @IBAction func ResetGesture(_ sender: Any) {
        return(DeFault())
    }
    
    @IBAction func TextField_and_Keyboard(_ sender: Any) {
        
    }
    
    // Change text string
    @IBAction func ChangeTextString(_ sender: Any) {
        if TextField.text == "" {TextLabel.text = "Hello from Truong !!!"}
        else {TextLabel.text = TextField.text
            TextField.text = ""
        }
        view.endEditing(true)
    }
}
