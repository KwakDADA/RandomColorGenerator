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
    
    private let colorInfoLabel: UILabel = {
       let label = UILabel()
        label.text = "R: 255, G: 255, B: 255"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUI()
        setAddView()
        setConstraints()
    }
    
    // MARK: - Set UI
    private func setUI() {
        view.backgroundColor = .white
    }
    
    // MARK: - Set Add View
    private func setAddView() {
        view.addSubview(backgroundView)
        backgroundView.addSubview(colorInfoLabel)
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
        
        // 색상 정보 라벨
        NSLayoutConstraint.activate([
            colorInfoLabel.centerXAnchor.constraint(equalTo: backgroundView.centerXAnchor),
            colorInfoLabel.centerYAnchor.constraint(equalTo: backgroundView.centerYAnchor)
        ])
    }

}

