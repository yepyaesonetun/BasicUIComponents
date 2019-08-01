//
//  ViewController.swift
//  BasicUIComponentsDemo
//
//  Created by YammoBots on 8/1/19.
//  Copyright © 2019 kks. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tfDateOfBirth: UITextField!
    
    private var datePicker: UIDatePicker?
    
    private var selectedGender: Int = -1
    
    @IBAction func scGender(_ sender: UISegmentedControl) {
        selectedGender = sender.selectedSegmentIndex
    }
    
    @IBAction func btnRegister(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: ProfileViewController.identifier) as! ProfileViewController
        vc.dob = tfDateOfBirth.text ?? ""
        vc.gender = selectedGender
        self.present(vc,animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        datePicker = UIDatePicker()
        datePicker?.datePickerMode = .date
        datePicker?.addTarget(self, action: #selector(selectDate(datePicker:)), for: .valueChanged)
        
        tfDateOfBirth.inputView = datePicker
    }

    @objc func selectDate(datePicker: UIDatePicker) {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd"
        tfDateOfBirth.text = dateFormatter.string(from: datePicker.date)
        view.endEditing(true)
    }

}

