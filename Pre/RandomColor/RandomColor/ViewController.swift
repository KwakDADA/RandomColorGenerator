//
//  ViewController.swift
//  RandomColor
//
//  Created by 곽다은 on 2/18/25.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - Components
    // 배경 뷰
    private let backgroundView: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    // 컨텐츠 스택뷰
    private let contentStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.alignment = .center
        stackView.distribution = .equalSpacing
        stackView.spacing = 10
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    // 색상 정보 라벨
    private let colorInfoLabel: UILabel = {
       let label = UILabel()
        label.text = "R: 255, G: 255, B: 255"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    // 버튼 스택뷰
    private let buttonStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.alignment = .fill
        stackView.distribution = .equalSpacing
        stackView.spacing = 10
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    // 배경색 변경 버튼
    private let changeColorButton: UIButton = {
        let button = UIButton()
        button.setTitle("Change Color", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    // 초기화 버튼
    private let resetButton: UIButton = {
        let button = UIButton()
        button.setTitle("Reset Button", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()

    // MARK: - View Did Load
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
        
        [
            contentStackView
        ].forEach { backgroundView.addSubview($0) }
        
        [
            colorInfoLabel,
            buttonStackView
        ].forEach { contentStackView.addArrangedSubview($0) }
        
        [
            changeColorButton,
            resetButton
        ].forEach { buttonStackView.addArrangedSubview($0) }
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
        
        // 컨텐츠 스택뷰
        NSLayoutConstraint.activate([
            contentStackView.centerXAnchor.constraint(equalTo: backgroundView.centerXAnchor),
            contentStackView.centerYAnchor.constraint(equalTo: backgroundView.centerYAnchor)
        ])
    }
}

