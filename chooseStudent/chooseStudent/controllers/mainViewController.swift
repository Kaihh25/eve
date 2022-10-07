//
//  mainViewController.swift
//  chooseStudent
//
//  Created by ICMMAC09-BF7F on 28/09/22.
//

import UIKit

class mainViewController: UIViewController {
var manager = managerStudent()
    let Main = UIStoryboard(name: "Main", bundle: nil)
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func adicionar(_ sender: Any) {
        let ADD_STUDENT: addStudentViewController = Main.instantiateViewController(withIdentifier: "addStudent") as! addStudentViewController
        ADD_STUDENT.manager = manager
        self.present(ADD_STUDENT, animated: true, completion: nil)
        performSegue(withIdentifier: "segueAddStudent", sender: nil)
        
    }
    

    @IBAction func alunos(_ sender: Any){
    let LIST_STUDENTS: listStudentsViewController = Main.instantiateViewController(withIdentifier: "listStudent")as! listStudentsViewController
        LIST_STUDENTS.manager = manager
        self.present(LIST_STUDENTS, animated: true, completion: nil)
        performSegue(withIdentifier: "segueListStudents", sender: nil)
    }
    
    @IBAction func returnMainView(segue: UIStoryboardSegue){}
}
