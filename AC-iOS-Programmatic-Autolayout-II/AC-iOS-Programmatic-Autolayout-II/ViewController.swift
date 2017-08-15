//
//  ViewController.swift
//  AC-iOS-Programmatic-Autolayout-II
//
//  Created by Louis Tur on 8/15/17.
//  Copyright © 2017 C4Q. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
		
		example1()
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}

	
	func example1() {
		var topSquare = UIView()
		topSquare.translatesAutoresizingMaskIntoConstraints = false
		self.view.addSubview(topSquare)
		topSquare.backgroundColor = UIColor(colorLiteralRed: 0.0, green: 128.0/255.0, blue: 128.0/255.0, alpha: 1.0)
		
		var nestedTopSquare = UIView()
		nestedTopSquare.translatesAutoresizingMaskIntoConstraints = false
		self.view.addSubview(nestedTopSquare)
		nestedTopSquare.backgroundColor = .orange
		
		var bottomSquare = UIView()
		bottomSquare.translatesAutoresizingMaskIntoConstraints = false
		self.view.addSubview(bottomSquare)
		bottomSquare.backgroundColor = .purple
		
		var straddlingSquare = UIView()
		straddlingSquare.translatesAutoresizingMaskIntoConstraints = false
		self.view.addSubview(straddlingSquare)
		straddlingSquare.backgroundColor = .green
		
		var label = UILabel()
		label.translatesAutoresizingMaskIntoConstraints = false
		label.text = "Label"
		label.textColor = .white
		self.view.addSubview(label)
		
		var textView = UITextView()
		textView.translatesAutoresizingMaskIntoConstraints = false
		textView.text = "Retro gastropub skateboard, helvetica lo-fi flannel jean shorts viral lomo cray irony af 90's. Biodiesel pour-over meditation vape blue bottle palo santo subway tile pinterest heirloom kinfolk asymmetrical gastropub tilde sartorial. Plaid bitters literally messenger bag squid XOXO leggings meggings godard mustache fanny pack blog listicle selfies. IPhone tumeric vegan trust fund tousled put a bird on it 3 wolf moon man braid waistcoat enamel pin."
		self.view.addSubview(textView)
		
		// top square
		topSquare.leadingAnchor.constraint(equalTo: self.view.leadingAnchor).isActive = true
		topSquare.trailingAnchor.constraint(equalTo: self.view.trailingAnchor).isActive	 = true
		topSquare.heightAnchor.constraint(equalTo: topSquare.widthAnchor).isActive = true
		topSquare.topAnchor.constraint(equalTo: self.view.topAnchor).isActive = true
		
		// nested square
		nestedTopSquare.centerXAnchor.constraint(equalTo: topSquare.centerXAnchor).isActive = true
		nestedTopSquare.centerYAnchor.constraint(equalTo: topSquare.centerYAnchor).isActive = true
		nestedTopSquare.widthAnchor.constraint(equalTo: topSquare.widthAnchor, multiplier: 0.5).isActive = true
		nestedTopSquare.heightAnchor.constraint(equalTo: topSquare.heightAnchor, multiplier: 0.5).isActive = true
		
		// straddling square
		straddlingSquare.centerYAnchor.constraint(equalTo: topSquare.bottomAnchor).isActive = true
		straddlingSquare.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
		straddlingSquare.widthAnchor.constraint(equalToConstant: 100).isActive = true
		straddlingSquare.heightAnchor.constraint(equalToConstant: 100.0).isActive = true
		
		// bottom square
		bottomSquare.leadingAnchor.constraint(equalTo: self.view.leadingAnchor).isActive = true
		bottomSquare.trailingAnchor.constraint(equalTo: self.view.trailingAnchor).isActive = true
		bottomSquare.topAnchor.constraint(equalTo: topSquare.bottomAnchor).isActive = true
		bottomSquare.bottomAnchor.constraint(equalTo: self.view.bottomAnchor).isActive = true
		
		// label 
		label.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 8.0).isActive = true
		label.topAnchor.constraint(equalTo: straddlingSquare.bottomAnchor, constant: 20.0).isActive = true
		
		// textView
		textView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 8.0).isActive = true
		textView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -8.0).isActive = true
		textView.topAnchor.constraint(equalTo: label.bottomAnchor, constant: 8.0).isActive = true
		textView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -8.0).isActive = true
		
	}

}

