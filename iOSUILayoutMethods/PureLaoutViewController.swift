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
    private let stackView = UIStackView().then {
        $0.axis = .vertical
        $0.distribution = .fillEqually
        $0.alignment = .fill
        $0.spacing = 0
        $0.translatesAutoresizingMaskIntoConstraints = false
    }
    
    private let imageView = UIImageView().then {
        $0.contentMode = .scaleAspectFit
        $0.backgroundColor = UIColor.black.withAlphaComponent(0.1)
    }
    
    private let textView = UITextView().then {
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
        stackView.autoPinEdgesToSuperviewSafeArea(with: UIEdgeInsets(top: 20, left: 20, bottom: 20, right: 20))
        stackView.addArrangedSubview(imageView)
        stackView.addArrangedSubview(textView)
    }
}

