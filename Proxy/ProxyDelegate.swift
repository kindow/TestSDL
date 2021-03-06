//
//  ProxyDelegate.swift
//  Events Center
//
//  Created by De biasi, Anna (A.) on 6/19/18.
//  Copyright © 2018 De biasi, Anna (A.). All rights reserved.
//

import UIKit
import SmartDeviceLink

// Sport -> Menu ... TDK -> Phone
extension MainViewController : ClickedSportDelegate{
    func clickedSport(str: String) {
        DispatchQueue.main.async { [weak self] in
            self?.performSegue(withIdentifier: str.lowercased(), sender: Int(1))
        }
    }
}

// Menu -> Detail ... TDK -> Phone
extension ViewController : ClickedEventDelegate{
    func clickedEventTDK(num:Int) {
        DispatchQueue.main.async { [weak self] in
            self?.performSegue(withIdentifier: "labeling", sender: num)
        }
    }
}

// Detail -> Sport ... TDK -> Phone
extension Labeling : ClickedMenu{
    func clickedMenuTDK(){
        DispatchQueue.main.async { [weak self] in
            _ = self?.navigationController?.popViewController(animated: true)
            _ = self?.navigationController?.popViewController(animated: true)
        }
    }
}
