//
//  CompleteTaskViewController.swift
//  DoIt
//
//  Created by Dan Waseen on 1/2/18.
//  Copyright © 2018 RevWon. All rights reserved.
//

import UIKit

class CompleteTaskViewController: UIViewController {
    
    var task : Task? = nil

    
    @IBOutlet weak var taskLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if task!.important == true {
            taskLabel.text = "‼️ \(task!.name!)"
        }
        else {
            taskLabel.text = task!.name!
        }
        // Do any additional setup after loading the view.
    }
    
    @IBAction func completeTapped(_ sender: Any) {
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        
        context.delete(task!)
        
        (UIApplication.shared.delegate as! AppDelegate).saveContext()
        navigationController!.popViewController(animated: true)
        
    }
    
    
}
