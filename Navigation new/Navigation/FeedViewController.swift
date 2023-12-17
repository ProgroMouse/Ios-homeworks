//
//  FeedViewController.swift
//  Navigation
//
//  Created by Viktoria Dolínskaya on 12.11.2023.
//

import UIKit

class FeedViewController: UIViewController {
    private let secondPost = Post(title: "Пост")
    private lazy var actionButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Показать пост", for: .normal)
        button.setTitleColor(.black, for: .normal)
        
        button.addTarget(self, action: #selector(tapButton), for: .touchUpInside)
        
        return button
    } ()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .lightGray
        setupUI()
    }
        
        func setupUI() {
            view.addSubview(actionButton)
            let safeAreaLayoutGuide = view.safeAreaLayoutGuide
            NSLayoutConstraint.activate([
                actionButton.leadingAnchor.constraint(
                    equalTo: safeAreaLayoutGuide.leadingAnchor,
                    constant: 20.0
                ),
                actionButton.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor,
                                                       constant: -20.0
                                                      ),
                actionButton.centerYAnchor.constraint(equalTo:
                                                        safeAreaLayoutGuide.centerYAnchor),
                actionButton.heightAnchor.constraint(equalToConstant: 44.0)
            ])
        }
    
        @objc private func tapButton() {
            let postVC = PostViewController()
            postVC.post = secondPost
            
            navigationController?.pushViewController(postVC, animated: true)
        }
    }
    

