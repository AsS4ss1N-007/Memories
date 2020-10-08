//
//  PresentViewController.swift
//  Memories
//
//  Created by Sachin's Macbook Pro on 08/10/20.
//

import UIKit
class PresentViewController: UIViewController {
    fileprivate let signUpButton: UIButton = {
        let button = UIButton(type: .system)
        button.layer.cornerRadius = 10
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("SignUp", for: .normal)
        button.backgroundColor = .systemPurple
        button.tintColor = .white
        button.titleLabel?.font = .boldSystemFont(ofSize: 20)
        return button
    }()
    
    fileprivate let signInButton: UIButton = {
        let button = UIButton(type: .system)
        button.layer.cornerRadius = 10
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Sign In", for: .normal)
        button.backgroundColor = UIColor(red: 251/255, green: 251/255, blue: 251/255, alpha: 1)
        button.layer.borderWidth = 1
        button.layer.borderColor = UIColor.darkGray.cgColor
        button.tintColor = .black
        button.titleLabel?.font = .boldSystemFont(ofSize: 20)
        return button
    }()
    
    fileprivate let titleImage: UIImageView = {
        let image = UIImageView(image: #imageLiteral(resourceName: "Icons"))
        image.clipsToBounds = true
        image.layer.cornerRadius = 10
        image.contentMode = .scaleAspectFit
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        configureUI()
    }
    
    private func configureUI(){
        signInButtonLayout()
        signUpButtonLayout()
        titleImageLayout()
    }
    
    private func titleImageLayout(){
        view.addSubview(titleImage)
        titleImage.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 50).isActive = true
        titleImage.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16).isActive = true
        titleImage.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16).isActive = true
        titleImage.bottomAnchor.constraint(equalTo: signUpButton.topAnchor, constant: -50).isActive = true
    }
    
    private func signInButtonLayout(){
        view.addSubview(signInButton)
        signInButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        signInButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40).isActive = true
        signInButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40).isActive = true
        signInButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -10).isActive = true
    }
    
    private func signUpButtonLayout(){
        view.addSubview(signUpButton)
        signUpButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        signUpButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40).isActive = true
        signUpButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40).isActive = true
        signUpButton.bottomAnchor.constraint(equalTo: signInButton.topAnchor, constant: -20).isActive = true
    }
}
