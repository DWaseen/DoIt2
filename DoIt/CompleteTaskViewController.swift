//
//  CompleteTaskViewController.swift
//  DoIt
//
//  Created by Dan Waseen on 1/2/18.
//  Copyright © 2018 RevWon. All rights reserved.
//

import UIKit

class CompleteTaskViewController: UIViewController {
    
    var task = Task()
    var previousVC = TasksViewController()
    
    @IBOutlet weak var taskLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if task.important == true {
            taskLabel.text = "‼️ \(task.name)"
        }
        else {
            taskLabel.text = task.name
        }
        // Do any additional setup after loading the view.
    }
    
    @IBAction func completeTapped(_ sender: Any) {
        previousVC.tasks.remove(at: previousVC.selectedIndex)
        previousVC.tableView.reloadData()
        navigationController!.popViewController(animated: true)
        
    }
    
    
}
