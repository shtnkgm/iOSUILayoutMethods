//
//  LayoutAnchorViewController.swift
//  iOSUILayoutMethods
//
//  Created by Shota Nakagami on 2019/01/30.
//  Copyright © 2019 Shota Nakagami. All rights reserved.
//

import UIKit
import Then

class LayoutAnchorViewController: UIViewController {
    private let stackView = UIStackView().then {
        $0.axis = .vertical
        $0.distribution = .fillEqually
        $0.alignment = .fill
        $0.spacing = 0
        $0.translatesAutoresizingMaskIntoConstraints = false
    }
    
    private let imageView = UIImageView().then {
        $0.image = UIImage(named: "image03")
        $0.contentMode = .scaleAspectFit
        $0.backgroundColor = UIColor.black.withAlphaComponent(0.1)
    }
    
    private let textView = UITextView().then {
        $0.text = "Lorem ipsum dolor sit er elit lamet, consectetaur cillium adipisicing pecu, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur."
        $0.textColor = .blue
        $0.backgroundColor = .clear
        $0.font = .systemFont(ofSize: 20)
    }
    
    init(image: UIImage?, text: String) {
        super.init(nibName: nil, bundle: nil)
        imageView.image = image
        textView.text = text
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .yellow
        setUpLayout()
    }
    
    private func setUpLayout() {
        view.addSubview(stackView)
        stackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20).isActive = true
        stackView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20).isActive = true
        stackView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20).isActive = true
        stackView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -20).isActive = true
        
        stackView.addArrangedSubview(imageView)
        stackView.addArrangedSubview(textView)
    }
}
