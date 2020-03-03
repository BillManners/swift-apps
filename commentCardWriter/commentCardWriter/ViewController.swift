//
//  ViewController.swift
//  commentCardWriter
//
//  Created by Manners, William (Coll) on 11/02/2020.
//  Copyright © 2020 Manners, William (Coll). All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var enjoyment: UISegmentedControl!
    @IBOutlet var EWLength: UISegmentedControl!
    @IBOutlet var progress: UISegmentedControl!
    @IBOutlet var subject: UITextField!
    @IBOutlet var commentCardFinal: UITextView!
    @IBOutlet var strength: UITextField!
    @IBOutlet var weakness: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func executePressed(_ sender: Any) {
        let commentCard = CardAssembler(enjoyment: enjoyment?.selectedSegmentIndex ?? 3, progress: progress?.selectedSegmentIndex ?? 3, EWLength: EWLength?.selectedSegmentIndex ?? 3, subject: subject?.text ?? "this subject", strength: strength?.text ?? "none given", weakness: weakness?.text ?? "none given")

        commentCardFinal.text = commentCard.assembler()
    }
    
}

