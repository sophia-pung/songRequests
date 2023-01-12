//
//  ProfileViewController.swift
//  thoughts
//
//  Created by Sophia Pung on 1/5/23.
//

import UIKit

private let reuseIdentifier = "Cell"

class ProfileViewController: UICollectionViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        //selector is an action you can customize
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Sign Out",
                                                         style: .done,
                                                         target: self,
                                                         action: #selector(didTapSignOut))
    }
    @objc private func didTapSignOut() {
        
    }
    
}
