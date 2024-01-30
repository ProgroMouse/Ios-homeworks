//
//  ProfileViewController.swift
//  Navigation
//
//  Created by Viktoria Dolínskaya on 16.11.2023.
//

import UIKit

class ProfileViewController: UIViewController {
    

//    private let profileObjects: [ProfileObjects] = [
//        ProfileObjects(image: .mouse, name: "Wise Mouse"),
//                       ]
    private let profileHeaderView: ProfileHeaderView = {
        let profileHeaderView = ProfileHeaderView()
        profileHeaderView.backgroundColor = .lightGray
        profileHeaderView.translatesAutoresizingMaskIntoConstraints = false
        
        return profileHeaderView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        view.backgroundColor = .white
        
        viewWillLayoutSubviews()
        
        //   зададим frame равный frame корневого view
        profileHeaderView.frame = view.frame
        
        setupUI()
    }
    
    func   setupUI() {
        
//           добавляем profileHeaderView в качестве дочернего класса
            view.addSubview(profileHeaderView)
        
        let safeAreaGuide = view.safeAreaLayoutGuide
                
                NSLayoutConstraint.activate([
                    profileHeaderView.leadingAnchor.constraint(
                        equalTo: safeAreaGuide.leadingAnchor,
                        constant: 1.0
                    ),
                    profileHeaderView.trailingAnchor.constraint(
                        equalTo: safeAreaGuide.trailingAnchor,
                        constant: -1.0
                    ),
                    profileHeaderView.topAnchor.constraint(
                        equalTo: safeAreaGuide.topAnchor,
                        constant: 0
                    ),
                    profileHeaderView.bottomAnchor.constraint(
                        equalTo: safeAreaGuide.bottomAnchor,
                        constant: 0
                    ),
                ])
    }

}
