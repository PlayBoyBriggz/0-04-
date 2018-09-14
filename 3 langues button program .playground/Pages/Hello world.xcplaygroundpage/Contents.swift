// Created on: Jan-2017
// Created by: christian briglio 
// Created for: ICS3U
// This program is the UIKit solution for the Hello, World! program
// this will be commented out when code moved to Xcode
import PlaygroundSupport


import UIKit

class ViewController : UIViewController {
    // this is the main view controller, that will show the UIKit elements
    
    // properties
    let helloWorldLabel = UILabel()
    let englishButton = UIButton()
    let frenchButton = UIButton () 
    let italianButton = UIButton () 
    
    override func viewDidLoad() {
        // UI
        super.viewDidLoad()
        
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        self.view = view
        
        
        englishButton.setTitle("English", for: UIControlState.normal)
        englishButton.setTitleColor(.blue, for: .normal)
        englishButton.addTarget(self, action: #selector(englishText), for: .touchUpInside)
        view.addSubview(englishButton)
        englishButton.translatesAutoresizingMaskIntoConstraints = false
        englishButton.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        englishButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        frenchButton.setTitle("french", for: UIControlState.normal)
        frenchButton.setTitleColor(.blue, for: .normal)
        frenchButton.addTarget(self, action: #selector(frenchText), for: .touchUpInside)
        view.addSubview(frenchButton)
        frenchButton.translatesAutoresizingMaskIntoConstraints = false
        frenchButton.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        frenchButton.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 20).isActive = true
        
        italianButton.setTitle("Italian", for: UIControlState.normal)
        italianButton.setTitleColor(.blue, for: .normal)
        italianButton.addTarget(self, action: #selector(italianText), for: .touchUpInside)
        view.addSubview(italianButton)
        italianButton.translatesAutoresizingMaskIntoConstraints = false
        italianButton.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        italianButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        
        helloWorldLabel.textAlignment = .center
        view.addSubview(helloWorldLabel)
        helloWorldLabel.translatesAutoresizingMaskIntoConstraints = false
        helloWorldLabel.topAnchor.constraint(equalTo: frenchButton.bottomAnchor, constant: 20).isActive = true
        helloWorldLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    
    }
    
@objc func englishText() {
        // show hello world in english 
        helloWorldLabel.text = " hello, world! "
        
    }
    
@objc func frenchText() {
        // show hello world in french 
        helloWorldLabel.text = " bonjour, le monde! "
    
    }
    
@objc func italianText() {
        // show hello world in italian 
        helloWorldLabel.text = " ciao, mondo! "
        
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
}

// this will be commented out when code moved to Xcode
PlaygroundPage.current.liveView = ViewController()

