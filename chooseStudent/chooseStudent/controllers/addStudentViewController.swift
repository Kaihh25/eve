//
//  addStudentViewController.swift
//  chooseStudent
//
//  Created by ICMMAC09-BF7F on 28/09/22.
//

import UIKit

class addStudentViewController: UIViewController {

    @IBOutlet weak var nome: UITextField!
    @IBOutlet weak var serie: UITextField!
    @IBOutlet weak var nota: UITextField!
    var manager = managerStudent()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func addStudent(_ sender: Any) {
        manager.addNewStudent(nome : nome.text!, serie: serie.text!, nota :nota.text!)
        nome.text = ""
        serie.text = ""
        nota.text = ""
    }
    
}
