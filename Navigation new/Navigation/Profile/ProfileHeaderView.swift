//
//  ProfileHeaderView.swift
//  Navigation
//
//  Created by Viktoria Dolínskaya on 23.12.2023.
//

import UIKit

struct ProfileObjects {
    var image: UIImage
    var name: String
}

class ProfileHeaderView: UIView {
 
    //   add imageView
    private let imageView: UIImageView = {
        //    инициализация imageView
        let imageView = UIImageView()
//        let myImage = UIImageView(frame: CGRect(x:16.0, y:16.0, width: 60, height: 60))
        imageView.layer.cornerRadius = 6
        //        imageView.layer.contents = UIImage(named: "mouse")?.cgImage
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.layer.borderWidth = 3
        imageView.layer.borderColor = UIColor.white.cgColor
        
        return imageView
    }()
    
    //    add nameLabel
    private let nameLabel: UILabel = {
        let nameLabel = UILabel()
        //            nameLabel.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        //        nameLabel.text = "Wise Mouse"
        nameLabel.textColor = .black
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        
        return nameLabel
    }()
    
    
    
//    //    текст статуса
//    private let statusText: UITextField = {
//        let text = UITextField()
//        text.backgroundColor = .black
//        text.translatesAutoresizingMaskIntoConstraints = false
//        
//        return text
//    }()
//    
//    // кнопка статуса
//    private let statusButton: UIButton = {
//        let statusButton = UIButton()
//        statusButton.translatesAutoresizingMaskIntoConstraints = false
//        statusButton.setTitle("Show Status", for: .normal)
//        statusButton.setTitleColor(.white, for: .normal)
//        
//        return statusButton
//    }()
  
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    func configure(with profileObjects: ProfileObjects) {
        imageView.image = profileObjects.image
        nameLabel.text = profileObjects.name
    }
    
    private func setupUI() {
        addSubview(imageView)
        addSubview(nameLabel)
        
        NSLayoutConstraint.activate([
            
            imageView.topAnchor.constraint(equalTo: topAnchor, constant: 16),
            imageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            
            nameLabel.topAnchor.constraint(equalTo: topAnchor, constant: 27),
            nameLabel.centerYAnchor.constraint(equalTo: imageView.centerYAnchor)
        ])
    }
}

