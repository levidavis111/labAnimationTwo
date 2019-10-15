//
//  ViewController.swift
//  lab-animation-two
//
//  Created by Levi Davis on 10/14/19.
//  Copyright © 2019 Levi Davis. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    lazy var buttonStackView: UIStackView = {
       let buttonStack = UIStackView()
        buttonStack.axis = .horizontal
        buttonStack.alignment = .center
        buttonStack.distribution = .fillProportionally
        buttonStack.spacing = 5
        return buttonStack
    }()
    
    lazy var linearButton: UIButton = {
        let button = UIButton()
        button.setTitle("linear", for: .normal)
        button.setTitleColor(.systemBlue, for: .normal)
        button.backgroundColor = .white
        button.addTarget(self, action: #selector(linearDrop(sender:)), for: .touchUpInside)
        
        return button
    }()
    
    lazy var easeInButton: UIButton = {
           let button = UIButton()
           button.setTitle("easeIn", for: .normal)
           button.setTitleColor(.systemBlue, for: .normal)
           button.backgroundColor = .white
           button.addTarget(self, action: #selector(easeInDrop(sender:)), for: .touchUpInside)
           
           return button
       }()
    
    lazy var easeOutButton: UIButton = {
           let button = UIButton()
           button.setTitle("easeOut", for: .normal)
           button.setTitleColor(.systemBlue, for: .normal)
           button.backgroundColor = .white
           button.addTarget(self, action: #selector(easeOutDrop(sender:)), for: .touchUpInside)
           
           return button
       }()
    
    lazy var easeInEaseOutButton: UIButton = {
           let button = UIButton()
           button.setTitle("easeInEaseOut", for: .normal)
           button.setTitleColor(.systemBlue, for: .normal)
           button.backgroundColor = .white
           button.addTarget(self, action: #selector(easeInEaseOutDrop(sender:)), for: .touchUpInside)
           
           return button
       }()
    
    lazy var animateButton: UIButton = {
        let button = UIButton()
        button.setTitle("Animate", for: .normal)
        button.setTitleColor(.systemBlue, for: .normal)
        button.backgroundColor = .white
        button.addTarget(self, action: #selector(animateButtonPressed(sender:)), for: .touchUpInside)
        
        return button
    }()
    
    lazy var linearButtonView: UIView = { [unowned self] in
        let thisView = UIView()
        thisView.backgroundColor = .cyan
        thisView.layer.cornerRadius = 45 / 2
        return thisView
    }()
    
    lazy var easeInButtonView: UIView = { [unowned self] in
        let thisView = UIView()
        thisView.backgroundColor = .cyan
        thisView.layer.cornerRadius = 45 / 2
        return thisView
    }()
    
    lazy var easeOutButtonView: UIView = { [unowned self] in
        let thisView = UIView()
        thisView.backgroundColor = .cyan
        thisView.layer.cornerRadius = 45 / 2
        return thisView
    }()
    
    lazy var easeInEaseOutButtonView: UIView = { [unowned self] in
        let thisView = UIView()
        thisView.backgroundColor = .cyan
        thisView.layer.cornerRadius = 45 / 2
        return thisView
    }()
    
    lazy var linearButtonViewHeightConstraint: NSLayoutConstraint = {
        linearButtonView.heightAnchor.constraint(equalToConstant: 45)
    }()
    
    lazy var linearButtonViewWidthConstraint: NSLayoutConstraint = {
        linearButtonView.widthAnchor.constraint(equalToConstant: 45)
    }()
    
    lazy var linearButtonViewCenterXConstraint: NSLayoutConstraint = {
        linearButtonView.centerXAnchor.constraint(equalTo: linearButton.centerXAnchor)
    }()
    
    lazy var linearButtonViewTopAnchor: NSLayoutConstraint = {
        linearButtonView.topAnchor.constraint(equalTo: linearButton.bottomAnchor, constant: 5)
    }()
    
    lazy var easeInButtonViewHeightConstraint: NSLayoutConstraint = {
        easeInButtonView.heightAnchor.constraint(equalToConstant: 45)
    }()
    
    lazy var easeInButtonViewWidthConstraint: NSLayoutConstraint = {
        easeInButtonView.widthAnchor.constraint(equalToConstant: 45)
    }()
    
    lazy var easeInButtonViewCenterXConstraint: NSLayoutConstraint = {
        easeInButtonView.centerXAnchor.constraint(equalTo: easeInButton.centerXAnchor)
    }()
    
    lazy var easeInButtonViewTopAnchor: NSLayoutConstraint = {
        easeInButtonView.topAnchor.constraint(equalTo: easeInButton.bottomAnchor, constant: 5)
    }()

    lazy var easeOutButtonViewHeightConstraint: NSLayoutConstraint = {
           easeOutButtonView.heightAnchor.constraint(equalToConstant: 45)
       }()
       
    lazy var easeOutButtonViewWidthConstraint: NSLayoutConstraint = {
           easeOutButtonView.widthAnchor.constraint(equalToConstant: 45)
       }()
       
    lazy var easeOutButtonViewCenterXConstraint: NSLayoutConstraint = {
           easeOutButtonView.centerXAnchor.constraint(equalTo: easeOutButton.centerXAnchor)
       }()
       
    lazy var easeOutButtonViewTopAnchor: NSLayoutConstraint = {
           easeOutButtonView.topAnchor.constraint(equalTo: easeOutButton.bottomAnchor, constant: 5)
       }()
    
    lazy var easeInEaseOutButtonViewHeightConstraint: NSLayoutConstraint = {
        easeInEaseOutButtonView.heightAnchor.constraint(equalToConstant: 45)
    }()
    
    lazy var easeInEaseOutButtonViewWidthConstraint: NSLayoutConstraint = {
        easeInEaseOutButtonView.widthAnchor.constraint(equalToConstant: 45)
    }()
    
    lazy var easeInEaseOutButtonViewCenterXConstraint: NSLayoutConstraint = {
        easeInEaseOutButtonView.centerXAnchor.constraint(equalTo: easeInEaseOutButton.centerXAnchor)
    }()
    
    lazy var easeInEaseOutButtonViewTopAnchor: NSLayoutConstraint = {
        easeInEaseOutButtonView.topAnchor.constraint(equalTo: easeInEaseOutButton.bottomAnchor, constant: 5)
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        addSubviews()
        constrainSubviews()
    }
    
    private func addSubviews() {
        view.addSubview(buttonStackView)
        addStackViewSubviews()
        view.addSubview(linearButtonView)
        view.addSubview(easeInButtonView)
        view.addSubview(easeOutButtonView)
        view.addSubview(easeInEaseOutButtonView)
        view.addSubview(animateButton)
        
        
    }
    
    private func addStackViewSubviews() {
        buttonStackView.addArrangedSubview(linearButton)
        buttonStackView.addArrangedSubview(easeInButton)
        buttonStackView.addArrangedSubview(easeOutButton)
        buttonStackView.addArrangedSubview(easeInEaseOutButton)

    }
    
    private func constrainSubviews() {
        constrainButtonStackView()
        constrainLinearButtonView()
        constrainAnimateButton()
        constrainEaseInButtonView()
        constrainEaseOutButtonView()
        constrainEaseInEaseOutButtonView()
    }
    
    private func constrainButtonStackView() {
           buttonStackView.translatesAutoresizingMaskIntoConstraints = false
           [buttonStackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            buttonStackView.topAnchor.constraint(equalTo: view.topAnchor, constant: 50),
            buttonStackView.heightAnchor.constraint(equalToConstant: 30),
            buttonStackView.widthAnchor.constraint(equalTo: view.widthAnchor)].forEach {$0.isActive = true}
       }
    
    private func constrainAnimateButton() {
        animateButton.translatesAutoresizingMaskIntoConstraints = false
        [animateButton.heightAnchor.constraint(equalToConstant: 30),
         animateButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10),
         animateButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -50)].forEach {$0.isActive = true}

    }
    
    private func constrainLinearButtonView() {
        linearButtonView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([linearButtonViewTopAnchor, linearButtonViewCenterXConstraint, linearButtonViewHeightConstraint, linearButtonViewWidthConstraint])
        
    }
    
    private func constrainEaseInButtonView() {
        easeInButtonView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([easeInButtonViewTopAnchor, easeInButtonViewCenterXConstraint, easeInButtonViewHeightConstraint, easeInButtonViewWidthConstraint])
        
    }
    
    private func constrainEaseOutButtonView() {
        easeOutButtonView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([easeOutButtonViewTopAnchor, easeOutButtonViewCenterXConstraint, easeOutButtonViewHeightConstraint, easeOutButtonViewWidthConstraint])
        
    }
    
    private func constrainEaseInEaseOutButtonView() {
        easeInEaseOutButtonView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([easeInEaseOutButtonViewTopAnchor, easeInEaseOutButtonViewCenterXConstraint, easeInEaseOutButtonViewHeightConstraint, easeInEaseOutButtonViewWidthConstraint])
    }
    
    @objc private func linearDrop(sender: UIButton!) {
        if self.linearButtonView.backgroundColor == .cyan {
            self.linearButtonView.backgroundColor = .white
        } else {
            self.linearButtonView.backgroundColor = .cyan
        }
        
    }
    
    @objc private func easeInDrop(sender: UIButton!) {
        if self.easeInButtonView.backgroundColor == .cyan {
            self.easeInButtonView.backgroundColor = .white
        } else {
            self.easeInButtonView.backgroundColor = .cyan
        }
    }

    @objc private func easeOutDrop(sender: UIButton!) {
        if self.easeOutButtonView.backgroundColor == .cyan {
            self.easeOutButtonView.backgroundColor = .white
        } else {
            self.easeOutButtonView.backgroundColor = .cyan
        }
    }

    @objc private func easeInEaseOutDrop(sender: UIButton!) {
        if self.easeInEaseOutButtonView.backgroundColor == .cyan {
            self.easeInEaseOutButtonView.backgroundColor = .white
        } else {
            self.easeInEaseOutButtonView.backgroundColor = .cyan
        }
    }

    @objc private func animateButtonPressed(sender: UIButton!) {
        let linearOffset = linearButtonViewTopAnchor.constant
               linearButtonViewTopAnchor.constant = linearOffset + 700
               UIView.animate(withDuration: 2.0, delay: 0.0, options: .curveLinear, animations: {
                   self.view.layoutIfNeeded()
               }, completion: nil)
        
        let easeInOffset = easeInButtonViewTopAnchor.constant
        easeInButtonViewTopAnchor.constant = easeInOffset + 700
        UIView.animate(withDuration: 2.0, delay: 0.0, options: .curveEaseIn, animations: {
            self.view.layoutIfNeeded()
        }, completion: nil)
        
        let easeOutOffset = easeOutButtonViewTopAnchor.constant
        easeOutButtonViewTopAnchor.constant = easeOutOffset + 700
        UIView.animate(withDuration: 2.0, delay: 0.0, options: .curveEaseIn, animations: {
            self.view.layoutIfNeeded()
        }, completion: nil)
        
        let easeInEaseOutOffset = easeInEaseOutButtonViewTopAnchor.constant
        easeInEaseOutButtonViewTopAnchor.constant = easeInEaseOutOffset + 700
        UIView.animate(withDuration: 2.0, delay: 0.0, options: .curveEaseIn, animations: {
            self.view.layoutIfNeeded()
        }, completion: nil)
        
        
    }


}

