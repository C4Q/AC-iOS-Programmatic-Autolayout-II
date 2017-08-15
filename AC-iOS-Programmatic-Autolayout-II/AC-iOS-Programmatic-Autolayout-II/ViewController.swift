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
		
//		example1()
		example2()
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}

	
	func example1() {
		let topSquare = UIView()
		topSquare.translatesAutoresizingMaskIntoConstraints = false
		self.view.addSubview(topSquare)
		topSquare.backgroundColor = UIColor(colorLiteralRed: 0.0, green: 128.0/255.0, blue: 128.0/255.0, alpha: 1.0)
		
		let nestedTopSquare = UIView()
		nestedTopSquare.translatesAutoresizingMaskIntoConstraints = false
		self.view.addSubview(nestedTopSquare)
		nestedTopSquare.backgroundColor = .orange
		
		let bottomSquare = UIView()
		bottomSquare.translatesAutoresizingMaskIntoConstraints = false
		self.view.addSubview(bottomSquare)
		bottomSquare.backgroundColor = .purple
		
		let straddlingSquare = UIView()
		straddlingSquare.translatesAutoresizingMaskIntoConstraints = false
		self.view.addSubview(straddlingSquare)
		straddlingSquare.backgroundColor = .green
		
		let label = UILabel()
		label.translatesAutoresizingMaskIntoConstraints = false
		label.text = "Label"
		label.textColor = .white
		self.view.addSubview(label)
		
		let textView = UITextView()
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
	
	func example2() {
		let topSquare = UIView()
		topSquare.translatesAutoresizingMaskIntoConstraints = false
		self.view.addSubview(topSquare)
		topSquare.backgroundColor = UIColor(colorLiteralRed: 0.0, green: 128.0/255.0, blue: 128.0/255.0, alpha: 1.0)

		let bottomSquare = UIView()
		bottomSquare.translatesAutoresizingMaskIntoConstraints = false
		self.view.addSubview(bottomSquare)
		bottomSquare.backgroundColor = .purple
		
		let nestedTopSquare = UIView()
		nestedTopSquare.translatesAutoresizingMaskIntoConstraints = false
		self.view.addSubview(nestedTopSquare)
		nestedTopSquare.backgroundColor = .orange
		
		let nestedBottomSquare = UIView()
		nestedBottomSquare.translatesAutoresizingMaskIntoConstraints = false
		self.view.addSubview(nestedBottomSquare)
		nestedBottomSquare.backgroundColor = .blue
		
		let interiorLongView = UIView()
		interiorLongView.backgroundColor = .green
		interiorLongView.translatesAutoresizingMaskIntoConstraints = false
		self.view.addSubview(interiorLongView)
		
		let interiorSquareView1 = UIView()
		interiorSquareView1.backgroundColor = .green
		interiorSquareView1.translatesAutoresizingMaskIntoConstraints = false
		self.view.addSubview(interiorSquareView1)
		
		let interiorSquareView2 = UIView()
		interiorSquareView2.backgroundColor = .green
		interiorSquareView2.translatesAutoresizingMaskIntoConstraints = false
		self.view.addSubview(interiorSquareView2)
		
		let interiorSquareView3 = UIView()
		interiorSquareView3.backgroundColor = .green
		interiorSquareView3.translatesAutoresizingMaskIntoConstraints = false
		self.view.addSubview(interiorSquareView3)
		
		// top square
		topSquare.leadingAnchor.constraint(equalTo: self.view.leadingAnchor).isActive = true
		topSquare.trailingAnchor.constraint(equalTo: self.view.trailingAnchor).isActive	 = true
		topSquare.heightAnchor.constraint(equalTo: topSquare.widthAnchor).isActive = true
		topSquare.topAnchor.constraint(equalTo: self.view.topAnchor).isActive = true
		
		// bottom square
		bottomSquare.leadingAnchor.constraint(equalTo: self.view.leadingAnchor).isActive = true
		bottomSquare.trailingAnchor.constraint(equalTo: self.view.trailingAnchor).isActive = true
		bottomSquare.topAnchor.constraint(equalTo: topSquare.bottomAnchor).isActive = true
		bottomSquare.bottomAnchor.constraint(equalTo: self.view.bottomAnchor).isActive = true
		
		// nested top square
		nestedTopSquare.topAnchor.constraint(equalTo: topSquare.topAnchor, constant: 30.0).isActive = true
		nestedTopSquare.leadingAnchor.constraint(equalTo: topSquare.leadingAnchor, constant: 20.0).isActive = true
		nestedTopSquare.trailingAnchor.constraint(equalTo: topSquare.trailingAnchor, constant: -20.0).isActive = true
		nestedTopSquare.bottomAnchor.constraint(equalTo: topSquare.bottomAnchor, constant: -30.0).isActive = true
		
		// nested bottom square
		nestedBottomSquare.topAnchor.constraint(equalTo: bottomSquare.topAnchor, constant: 20.0).isActive = true
		nestedBottomSquare.leadingAnchor.constraint(equalTo: bottomSquare.leadingAnchor, constant: 20.0).isActive = true
		nestedBottomSquare.trailingAnchor.constraint(equalTo: bottomSquare.trailingAnchor, constant: -20.0).isActive = true
		nestedBottomSquare.bottomAnchor.constraint(equalTo: bottomSquare.bottomAnchor, constant: -20.0).isActive = true

		// interior long view
		interiorLongView.topAnchor.constraint(equalTo: nestedTopSquare.topAnchor, constant: 10.0).isActive = true
		interiorLongView.bottomAnchor.constraint(equalTo: nestedTopSquare.bottomAnchor, constant: -10.0).isActive = true
		interiorLongView.leadingAnchor.constraint(equalTo: nestedTopSquare.leadingAnchor, constant: 10.0).isActive = true
		interiorLongView.widthAnchor.constraint(equalTo: nestedTopSquare.widthAnchor, multiplier: 0.667).isActive = true
		
		
		// interior square view 1
		interiorSquareView1.topAnchor.constraint(equalTo: interiorLongView.topAnchor).isActive = true
		interiorSquareView1.trailingAnchor.constraint(equalTo: nestedTopSquare.trailingAnchor, constant: -10.0).isActive = true
		interiorSquareView1.leadingAnchor.constraint(equalTo: interiorLongView.trailingAnchor, constant: 10.0).isActive = true
		interiorSquareView1.heightAnchor.constraint(equalTo: interiorSquareView1.widthAnchor).isActive = true
		
		
		// interior square view 2
		interiorSquareView2.leadingAnchor.constraint(equalTo: interiorSquareView1.leadingAnchor).isActive = true
		interiorSquareView2.trailingAnchor.constraint(equalTo: interiorSquareView1.trailingAnchor).isActive = true
		interiorSquareView2.centerYAnchor.constraint(equalTo: interiorLongView.centerYAnchor).isActive = true
		interiorSquareView2.heightAnchor.constraint(equalTo: interiorSquareView1.widthAnchor).isActive = true
		
		// interior square view 3
		interiorSquareView3.leadingAnchor.constraint(equalTo: interiorSquareView1.leadingAnchor).isActive = true
		interiorSquareView3.trailingAnchor.constraint(equalTo: interiorSquareView1.trailingAnchor).isActive = true
		interiorSquareView3.bottomAnchor.constraint(equalTo: interiorLongView.bottomAnchor).isActive = true
		interiorSquareView3.heightAnchor.constraint(equalTo: interiorSquareView1.widthAnchor).isActive = true
	}

}























