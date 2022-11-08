//
//  QuizBrain.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation

struct QuizBrain {
    
    var questionNumber = 0
    var score = 0
    
    let quiz = [
        Question(q: "O sangue de uma lesma é verde.", a: "True"),
        Question(q: "Aproximadamente um quarto dos ossos humanos estão nos pés.", a: "True"),
        Question(q: "A área total da superfície de dois pulmões humanos é de aproximadamente 70 metros quadrados.", a: "True"),
        Question(q: "Em West Virginia, EUA, se você acidentalmente bater em um animal com seu carro, você pode levá-lo para casa para comer.", a: "True"),
        Question(q: "Em Londres, no Reino Unido, se você morrer na Câmara do Parlamento, tecnicamente tem direito a um funeral de estado, porque o prédio é considerado um lugar sagrado demais.", a: "False"),
        Question(q: "É ilegal fazer xixi no oceano em Portugal.", a: "True"),
        Question(q: "Você pode levar uma vaca escada abaixo, mas não subir escadas.", a: "False"),
        Question(q: "O Google foi originalmente chamado de 'Backrub'.", a: "True"),
        Question(q: "O nome de solteira da mãe de Buzz Aldrin era 'Moon'.", a: "True"),
        Question(q:"O som mais alto produzido por qualquer animal é de 188 decibéis. Esse animal é o elefante africano.", a: "False"),
        Question(q:"Nenhum pedaço de papel quadrado seco pode ser dobrado ao meio mais de 7 vezes.", a: "False"),
        Question(q:"Chocolate afeta o coração e o sistema nervoso de um cachorro; alguns gramas são suficientes para matar um cachorro pequeno.", a: "True")
    ]
    
    func getQuestionText() -> String {
        return quiz[questionNumber].text
    }
    
    func getProgress() -> Float {
        return Float(questionNumber) / Float(quiz.count)
    }
    
    mutating func getScore() -> Int {
        return score
    }
    
     mutating func nextQuestion() {
        
        if questionNumber + 1 < quiz.count {
            questionNumber += 1
        } else {
            questionNumber = 0
            
        }
    }
    
    mutating func checkAnswer(userAnswer: String) -> Bool {
        if userAnswer == quiz[questionNumber].answer {
            score += 1
            return true
        } else {
            return false
        }
    }
}

