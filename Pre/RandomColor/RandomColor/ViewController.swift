//
//  ViewController.swift
//  RandomColor
//
//  Created by 곽다은 on 2/18/25.
//

import UIKit

class ViewController: UIViewController {
    
    private let backgroundView: UIView = {
        let view = UIView()
        view.backgroundColor = .blue
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUI()
        setConstraints()
    }
    
    // MARK: - Set UI
    private func setUI() {
        view.backgroundColor = .white
        view.addSubview(backgroundView)
    }
    
    // MARK: - Set Constraints
    private func setConstraints() {
        // 배경 뷰
        NSLayoutConstraint.activate([
            backgroundView.topAnchor.constraint(equalTo: view.topAnchor),
            backgroundView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            backgroundView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            backgroundView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
    }

}

