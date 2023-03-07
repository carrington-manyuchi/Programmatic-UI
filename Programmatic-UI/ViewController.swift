//
//  ViewController.swift
//  Programmatic-UI
//
//  Created by Carrington Tafadzwa Manyuchi on 2023/03/06.
//

import UIKit

class ViewController: UIViewController {
    
    let nextButton = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .systemBackground
        setupButton()
        
        title = "First Screen"
        navigationController?.navigationBar.prefersLargeTitles = true
        
    }
    
    
    func setupButton() {
        
        view.addSubview(nextButton)
        
        nextButton.setTitle("Next", for: .normal)
        nextButton.backgroundColor = .systemPink
        
        nextButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            nextButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            nextButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            nextButton.widthAnchor.constraint(equalToConstant: 200),
            nextButton.heightAnchor.constraint(equalToConstant: 50)
    ])
        
        nextButton.addTarget(self, action: #selector(moveNext), for: .touchUpInside)
        
    }
    
    @objc func moveNext() {
        
        let nextScreen = SecondScreen()
        nextScreen.title = "Second Screen"
        navigationController?.pushViewController(nextScreen, animated: true)
        
    }
}

