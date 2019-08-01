//
//  ProfileViewController.swift
//  BasicUIComponentsDemo
//
//  Created by YammoBots on 8/1/19.
//  Copyright © 2019 kks. All rights reserved.
//

import Foundation
import UIKit

class ProfileViewController: UIViewController{
    
    static let identifier = "ProfileViewController"

    @IBOutlet weak var tfDob: UILabel!
    
    @IBOutlet weak var tfGender: UILabel!
    
    var dob: String = ""
    var gender: Int = -1
    
    override func viewDidLoad() {
        
        switch gender {
        case 0:
            tfGender.text = "Male"
            break
        case 1:
            tfGender.text = "Female"
            break
        default:
            break
        }
    }
}
