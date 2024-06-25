//
//  WeatherView.swift
//  WeatherEdu
//
//  Created by Willian Magnum Albeche on 25/06/24.
//

import Foundation
import UIKit
class WeatherView : UIView {
    
    
    let backgroundImage: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.contentMode = .scaleAspectFill
        
        return image
    }()
    
    let searchBar: UISearchBar = {
       let search = UISearchBar()
        search.translatesAutoresizingMaskIntoConstraints = false
        search.placeholder = "Enter the city name here"
        return search
    }()
    
    init() {
        super.init(frame: .zero)
        setupUI()
    }
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupUI() {
        updateBackgroundImage()
        addSubview(backgroundImage)
        addSubview(searchBar)
        
        NSLayoutConstraint.activate([
            searchBar.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor)
        ])
    }
    
    private func updateBackgroundImage(){
        let hour = Calendar.current.component(.hour, from: Date())
        
        var imageName: String
        switch hour {
        case 1...6:
            imageName = "BackgroundImageNight"
        case 7...18:
            imageName = "BackgroundImageDay"
        default:
            imageName = "BackgroundImageNight"
        }
        backgroundImage.image = UIImage(named: imageName)
    }
}
