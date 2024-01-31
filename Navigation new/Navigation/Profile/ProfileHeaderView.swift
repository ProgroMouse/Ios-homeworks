//
//  ProfileHeaderView.swift
//  Navigation
//
//  Created by Viktoria Dolínskaya on 23.12.2023.
//

import UIKit

class ProfileHeaderView: UIView {
    //   add imageView
    private lazy var imageView: UIImageView = {
        //    инициализация imageView
        let imageView = UIImageView()
        imageView.layer.cornerRadius = 75
        imageView.image = UIImage(named: "mouse")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.layer.borderWidth = 3
        imageView.layer.borderColor = UIColor.white.cgColor
        imageView.clipsToBounds = true
        
        return imageView
    }()
    
    //    add nameLabel
    private lazy var nameLabel: UILabel = {
        let nameLabel = UILabel()
        nameLabel.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        nameLabel.text = "Wise Mouse"
        nameLabel.textColor = .black
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        
        return nameLabel
    }()
    
    private lazy var statusLabel: UILabel = {
        let statusLabel = UILabel()
        statusLabel.translatesAutoresizingMaskIntoConstraints = false
        statusLabel.font = UIFont.systemFont(ofSize: 14, weight: .regular)
        statusLabel.text = "Something..."
        
        return statusLabel
    }()
    // кнопка статуса
    private lazy var statusButton: UIButton = {
        let statusButton = UIButton()
        statusButton.translatesAutoresizingMaskIntoConstraints = false
        statusButton.setTitle("Show Status", for: .normal)
        statusButton.setTitleColor(.white, for: .normal)
        statusButton.backgroundColor = .systemBlue
        statusButton.layer.cornerRadius = 4
        statusButton.layer.shadowOffset = CGSize(width: 4.0, height: 4.0)
        statusButton.layer.shadowRadius = 4
        statusButton.layer.shadowColor = UIColor.black.cgColor
        statusButton.layer.shadowOpacity = 0.7
        statusButton.clipsToBounds = false
        statusButton.addTarget(self, action: #selector(buttonPressed(_:)), for: .touchUpInside)
        
        return statusButton
    }()
    
    //    текст статуса
    private lazy var statusText: UITextField = {
        let statusText = UITextField()
        statusText.translatesAutoresizingMaskIntoConstraints = false
        statusText.font = UIFont.systemFont(ofSize: 15, weight: .regular)
        statusText.backgroundColor = .white
        statusText.textColor = .black
        statusText.layer.borderColor = UIColor.black.cgColor
        statusText.layer.borderWidth = 1
        statusText.layer.cornerRadius = 12
        statusText.font = UIFont.systemFont(ofSize: 14, weight: .regular)
        statusText.placeholder = "Waiting for something..."
        
        return statusText
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupUI()
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    private func setupUI() {
        addSubview(imageView)
        addSubview(nameLabel)
        addSubview(statusLabel)
        addSubview(statusButton)
        addSubview(statusText)
    }
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            
            imageView.widthAnchor.constraint(equalToConstant: 150),
            imageView.heightAnchor.constraint(equalToConstant: 150),
            imageView.topAnchor.constraint(equalTo: topAnchor, constant: 16),
            imageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            
            nameLabel.topAnchor.constraint(equalTo: topAnchor, constant: 27),
            nameLabel.leadingAnchor.constraint(equalTo: imageView.trailingAnchor, constant: 15),
            
            statusLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 30),
            statusLabel.leadingAnchor.constraint(equalTo: imageView.trailingAnchor, constant: 15),
            
            statusText.leadingAnchor.constraint(equalTo: imageView.trailingAnchor, constant: 15),
            statusText.bottomAnchor.constraint(equalTo: statusButton.topAnchor, constant: -34),
            statusText.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16),
            statusText.heightAnchor.constraint(equalToConstant: 40),
            
            statusButton.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 16),
            statusButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            statusButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16),
            statusButton.heightAnchor.constraint(equalToConstant: 50),
        ])
    }
    @objc private func buttonPressed(_ sender: Any) {
        statusLabel.text = statusText.text
        print()
    }
}
