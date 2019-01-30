//
//  PureLaoutViewController.swift
//  iOSUILayoutMethods
//
//  Created by Shota Nakagami on 2019/01/30.
//  Copyright © 2019 Shota Nakagami. All rights reserved.
//

import UIKit
import Then
import PureLayout

class PureLaoutViewController: UIViewController {
    let stackView = UIStackView().then {
        $0.axis = .vertical
        $0.distribution = .fillEqually
        $0.alignment = .fill
        $0.spacing = 0
        $0.translatesAutoresizingMaskIntoConstraints = false
    }
    
    let imageView = UIImageView().then {
        $0.image = UIImage(named: "image01")
        $0.contentMode = .scaleAspectFit
        $0.backgroundColor = UIColor.black.withAlphaComponent(0.1)
    }
    
    let textView = UITextView().then {
        $0.text = "Lorem ipsum dolor sit er elit lamet, consectetaur cillium adipisicing pecu, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur."
        $0.textColor = .blue
        $0.backgroundColor = .clear
        $0.font = .systemFont(ofSize: 20)
    }
    
    init() {
        super.init(nibName: nil, bundle: nil)
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
        stackView.autoPinEdgesToSuperviewSafeArea(with: UIEdgeInsets(top: 20, left: 20, bottom: 20, right: 20))
        stackView.addArrangedSubview(imageView)
        stackView.addArrangedSubview(textView)
    }
}
