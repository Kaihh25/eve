//
//  listStudentsViewController.swift
//  chooseStudent
//
//  Created by ICMMAC09-BF7F on 28/09/22.
//

import UIKit

class listStudentsViewController: UIViewController {
    
    var manager = managerStudent()
    var index = 0

    @IBOutlet weak var nome: UILabel!
    @IBOutlet weak var serie: UILabel!
    @IBOutlet weak var nota: UILabel!
    
    @IBOutlet weak var posterior: UIButton!
    @IBOutlet weak var anterior: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        posterior.isHidden = true
        anterior.isHidden = true

        if manager.escola.count > 0 {
            nome.text = manager.escola[0].nomeStudent
            serie.text = manager.escola[0].serieStudent
            nota.text = manager.escola[0].notaStudent
        }
        
        if manager.escola.count > 1 {
            posterior.isHidden = false
        }
    }
    
    @IBAction func posterior(_ sender: Any) {
        index = index + 1
        let aluno: Student = manager.listStudent(posicao: index)
        nome.text = aluno.nomeStudent
        serie.text = aluno.serieStudent
        nota.text = aluno.notaStudent
        
        anterior.isHidden = false
        
        if manager.escola.count == (index+1){
            posterior.isHidden = true
        }
    }
    
    @IBAction func anterior(_ sender: Any) {
        index = index - 1
        let aluno: Student =
        manager.listStudent(posicao: index)
        nome.text = aluno.nomeStudent
        serie.text = aluno.serieStudent
        nota.text = aluno.notaStudent
        
        posterior.isHidden = false
        
        if index == 0 {
            anterior.isHidden = true
        }
    }
}
