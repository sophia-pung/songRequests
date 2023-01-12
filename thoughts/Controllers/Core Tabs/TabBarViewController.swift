//
//  TabBarViewController.swift
//  thoughts
//
//  Created by Sophia Pung on 1/5/23.
//

import UIKit

class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        setUpControllers()
    }
    //what does a private function do?
    private func setUpControllers() {
        //why does the view.backgroundColor not show up from HomeViewController
        view.backgroundColor = .cyan
        let partyDetails = PartyViewController()
        partyDetails.title = "Event Details"
        let songs = SongAddViewController()
        songs.title = "Song Queue"
        let profile = ProfileViewController()
        profile.title = "Profile"
        
        partyDetails.navigationItem.largeTitleDisplayMode = .always
        songs.navigationItem.largeTitleDisplayMode = .always
        profile.navigationItem.largeTitleDisplayMode = .always
        
        let nav1 = UINavigationController(rootViewController: partyDetails)
        let nav2 = UINavigationController(rootViewController: songs)
        let nav3 = UINavigationController(rootViewController: profile)
        
        //what does this do? 
        nav1.navigationBar.prefersLargeTitles = true;
        nav2.navigationBar.prefersLargeTitles = true;
        nav3.navigationBar.prefersLargeTitles = true;
        
        nav1.tabBarItem = UITabBarItem(title: "Event", image: UIImage(systemName: "calendar"), tag: 1)
        nav2.tabBarItem = UITabBarItem(title: "Songs", image: UIImage(systemName: "music.note.list"), tag: 2)
        nav3.tabBarItem = UITabBarItem(title: "Profile", image: UIImage(systemName: "person.circle"), tag: 3)
        
        //what do the pair of brackets do?
        setViewControllers([nav1, nav2, nav3], animated: true)
    }
}
