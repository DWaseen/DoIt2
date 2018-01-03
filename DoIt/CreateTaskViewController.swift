//
//  CreateTaskViewController.swift
//  DoIt
//
//  Created by Dan Waseen on 1/2/18.
//  Copyright © 2018 RevWon. All rights reserved.
//

import UIKit

class CreateTaskViewController: UIViewController {

    @IBOutlet weak var taskNameTextField: UITextField!
    
    @IBOutlet weak var importantSwitch: UISwitch!
    
    var previousVC = TasksViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func addTapped(_ sender: Any) {
       let task = Task()
        task.name = taskNameTextField.text!
        task.important = importantSwitch.isOn
        previousVC.tasks.append(task)
        previousVC.tableView.reloadData()
        navigationController!.popViewController(animated: true)
        
    }


}
