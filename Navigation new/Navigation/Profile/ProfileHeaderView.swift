//
//  ProfileHeaderView.swift
//  Navigation
//
//  Created by Viktoria Dolínskaya on 23.12.2023.
//

import UIKit

class ProfileHeaderView: UIView {
    
//    картинка
    private lazy var image: UIImageView = {
        let image = UIImageView()
        image.backgroundColor = .white
        image.translatesAutoresizingMaskIntoConstraints = false
        
        return image
    }()
    
//    Имя
    private lazy var label: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        label.text = "Wise Mouse"
        label.textColor = .black
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
//    текст статуса
    private lazy var statusText: UITextField = {
        let text = UITextField()
        text.backgroundColor = .black
        text.translatesAutoresizingMaskIntoConstraints = false
        
        return text
    }()
    
// кнопка статуса
    private lazy var statusButton: UIButton = {
        let statusButton = UIButton()
        statusButton.translatesAutoresizingMaskIntoConstraints = false
        statusButton.setTitle("Show Status", for: .normal)
        statusButton.setTitleColor(.white, for: .normal)
        
        return statusButton
    }()

//        let safeAreaLayoutGuide = view.safeAreaLayoutGuide
//        NSLayoutConstraint.activate([
//            statusButton.leadingAnchor.constraint(
//                equalTo: safeAreaLayoutGuide.leadingAnchor,
//                constant: 20.0
//            ),
//            statusButton.trailingAnchor.constraint(
//                equalTo: safeAreaLayoutGuide.trailingAnchor,
//                constant: -20.0
//            ),
//            statusButton.centerYAnchor.constraint(equalTo: safeAreaLayoutGuide.centerYAnchor),
//            statusButton.heightAnchor.constraint(equalToConstant: 44.0)
//        ])
//    statusButton.addTarget(self, action:
//        #selector(buttonPressed(_:)), for: .touchUpInside)
//    }
//    @objc func statusButtonPressed(_ sender: UIButton) {
//
//        statusText.modalTransitionStyle = .coverVertical
//        present(statusText, animated: true)
//
//
//    }
}

    

