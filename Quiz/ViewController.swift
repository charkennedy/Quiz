//
//  ViewController.swift
//  Quiz
//
//  Created by Charlotte Kennedy on 1/23/19.
//  Copyright © 2019 Charlotte Kennedy. All rights reserved.
//  High Point University
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var questionLabel: UILabel!
    @IBOutlet var answerLabel: UILabel!

    let questions : [String] = [
        "What is 7+7?",
        "What is the capital of Vermont?",
        "What is cognac made from?",
        "What is the steakhouse called?",
        "What is 2000-76?",
        "Who is the president of HPU?",
        "What building is the pool and basketball court in?",
        "What is the mascot?"
        
    ]
    let answers: [String] = [
        "14",
        "Montpelier",
        "Grapes",
        "1924 Prime",
        "1924",
        "Nido Qubein",
        "Millis",
        "Panther"
        
    ]
    
    var currentQuestionIndex: Int = 0
    
    
    @IBAction func showNextQuestion(_ sender: UIButton) {
        currentQuestionIndex += 1
        if currentQuestionIndex == questions.count {
            currentQuestionIndex = 0
        }
        
        let question: String = questions[currentQuestionIndex]
        questionLabel.text = question
        answerLabel.text = "???"
    }
    
    @IBAction func showAnswer(_ sender: UIButton) {
        let answer: String = answers[currentQuestionIndex]
        answerLabel.text = answer
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        questionLabel.text = questions[currentQuestionIndex]
    }
    
}

