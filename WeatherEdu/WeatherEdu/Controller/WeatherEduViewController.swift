//
//  WeatherEduViewController.swift
//  WeatherEdu
//
//  Created by Willian Magnum Albeche on 25/06/24.
//

import UIKit

class WeatherEduViewController: UIViewController {

    private let weatherView = WeatherView()
    let searchController = UISearchController()
    override func loadView() {
        view = weatherView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.searchController =  searchController
       
    }

}
