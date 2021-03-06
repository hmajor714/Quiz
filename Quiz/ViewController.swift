//
//  ViewController.swift
//  Quiz
//
//  Created by Hunter Major on 1/23/19.
//  High Point University
//  Copyright © 2019 Hunter Major. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var questionLabel: UILabel!
    @IBOutlet var answerLabel: UILabel!
    
    let questions: [String] = [
        "What is 7+7?",
        "What is the capital of Vermont?",
        "What is cognac made from?",
        "Is water wet?",
        "Is a hotdog a sandwich?",
        "How can a man go eight days without sleep?",
        "How do you handcuff a one-armed man?",
        "Who has the most Twitter followers?"
    ]
    let answers: [String] = [
        "14",
        "Montpelier",
        "Grapes",
        "Yes",
        "No",
        "He sleeps during the night",
        "You don't",
        "Katy Perry"
    ]
    var currentQuestionIndex: Int = 0

    @IBAction func showNextQuestion(_ sender: UIButton){
        currentQuestionIndex += 1
        if  currentQuestionIndex == questions.count {
            currentQuestionIndex = 0
        }
        
        let question: String = questions[currentQuestionIndex]
        questionLabel.text = question
        answerLabel.text = "???"
        
    }
    
    @IBAction func showAnswer(_ sender: UIButton){
        let answer: String = answers[currentQuestionIndex]
        answerLabel.text = answer
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        questionLabel.text = questions[currentQuestionIndex]
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

