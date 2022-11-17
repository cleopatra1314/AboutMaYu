//
//  QAViewController.swift
//  Icepopo
//
//  Created by 黃郁雯 on 2022/11/7.
//

import UIKit

class QAViewController: UIViewController {

    var qa: QA!
    var questionIndex = 0
    
    @IBOutlet weak var pageLabel: UILabel!
    @IBOutlet weak var questionTextView: UITextView!
    @IBOutlet weak var scoreGainLabel: UILabel!
    @IBOutlet weak var answerResultTextView: UITextView!
    @IBOutlet weak var scoreOfQuestionTextView: UITextView!
    
    
    @IBOutlet weak var poImageView: UIImageView!
    @IBOutlet weak var goImageView: UIImageView!
    @IBOutlet weak var bubbleHornImageView: UIImageView!
    
    @IBOutlet weak var optionAButton: UIButton!
    @IBOutlet weak var optionBButton: UIButton!
    @IBOutlet weak var optionCButton: UIButton!
    @IBOutlet weak var optionDButton: UIButton!
    @IBOutlet weak var nextButton: UIButton!
    
    //why 不行直接用 QAAray
    //var qaArray = QAArray
    var amountOfQAArray = QAArray.count
    var totalScore = 0
    let amountOfQuestion = 10

    
    override func viewDidLoad() {
        super.viewDidLoad()
        QAArray.shuffle()
        updateUI()
        
        // Do any additional setup after loading the view.
    }

    //答題
    @IBAction func selectOptionButton(_ sender: UIButton) {
        let selectedOption = sender.currentTitle!
        if checkAnswer(userAnswer: selectedOption){
            poImageView.image = UIImage(named: "cpuBingo")
            goImageView.image = UIImage(named: "playerBingo")
            sender.setTitleColor(.white, for: .normal)
            sender.tintColor = UIColor(cgColor: CGColor(red: 42/255, green: 179/255, blue: 0/255, alpha: 1))
            answerResultTextView.text = "恭喜答對，太了解我😌"
            answerResultTextView.textColor = UIColor(cgColor: CGColor(red: 103/255, green: 244/255, blue: 110/255, alpha: 1))
            scoreGainLabel.text = "+ \(QAArray[questionIndex].score) 分"
            totalScore += QAArray[questionIndex].score
        }else{
            findAnswer()
            poImageView.image = UIImage(named: "cpuWrong")
            goImageView.image = UIImage(named: "playerWrong")
            sender.setTitleColor(.white, for: .normal)
            sender.tintColor = .systemRed
            answerResultTextView.text = "哋哋答錯，請加油💪🏻"
            answerResultTextView.textColor = UIColor(cgColor: CGColor(red: 243/255, green: 46/255, blue: 32/255, alpha: 1))
            //倒扣機制 scoreGainLabel.text = "- \(QAArray[questionIndex].score) 分"
            scoreGainLabel.text = "+ 0 分"
            scoreGainLabel.textColor = .white
        }
        optionAButton.isUserInteractionEnabled = false
        optionBButton.isUserInteractionEnabled = false
        optionCButton.isUserInteractionEnabled = false
        optionDButton.isUserInteractionEnabled = false
        
        
    }
        
    //for in 迴圈方法測試
    func test(){
        for q in QAArray{
            questionTextView.text = q.question
            optionAButton.setTitle(q.optionA, for: .normal)
            optionBButton.setTitle(q.optionB, for: .normal)
            optionCButton.setTitle(q.optionC, for: .normal)
            optionDButton.setTitle(q.optionD, for: .normal)
            scoreOfQuestionTextView.text = String(q.score)
            
        }
    }
    //找到該題正確選項按鈕
    func findAnswer(){
        switch QAArray[questionIndex].answer {
        case optionAButton.currentTitle:
            optionAButton.layer.borderWidth = 3
            optionAButton.layer.borderColor = CGColor(red: 219/255, green: 255/255, blue: 189/255, alpha: 1)
            optionAButton.layer.cornerRadius = optionAButton.frame.height / 2
        case optionBButton.currentTitle:
            optionBButton.layer.borderWidth = 3
            optionBButton.layer.borderColor = CGColor(red: 219/255, green: 255/255, blue: 189/255, alpha: 1)
            optionBButton.layer.cornerRadius = optionAButton.frame.height / 2
        case optionCButton.currentTitle:
            optionCButton.layer.borderWidth = 3
            optionCButton.layer.borderColor = CGColor(red: 219/255, green: 255/255, blue: 189/255, alpha: 1)
            optionCButton.layer.cornerRadius = optionAButton.frame.height / 2
        case optionDButton.currentTitle:
            optionDButton.layer.borderWidth = 3
            optionDButton.layer.borderColor = CGColor(red: 219/255, green: 255/255, blue: 189/255, alpha: 1)
            optionDButton.layer.cornerRadius = optionAButton.frame.height / 2
        default:
            break
        }
    }
    
    //檢查答案是否正確
    func checkAnswer(userAnswer: String) -> Bool{
        if userAnswer == QAArray[questionIndex].answer{
            return true
        }else{ return false }
    }
    
    //換下一題，若已經是最後一題，則進入總得分頁面
    @IBAction func nextQuestion(_ sender: UIButton) {
        if (questionIndex + 1) < amountOfQuestion{
            questionIndex += 1
            updateUI()
        }else{
            performSegue(withIdentifier: "showGrade", sender: nil)
        }
    }
        
    //將得到的資訊顯示到 view 上，換下一題頁面並重置畫面
    func updateUI(){
        let currentQuestion = QAArray[questionIndex]
        
        pageLabel.text = "\(questionIndex + 1) / \(amountOfQuestion)"
        pageLabel.textColor = .white
        poImageView.layer.cornerRadius = (poImageView.frame.height) / 2
        goImageView.layer.cornerRadius = (goImageView.frame.height) / 2
        
        //button 回復成可點擊狀態
        optionAButton.isUserInteractionEnabled = true
        optionBButton.isUserInteractionEnabled = true
        optionCButton.isUserInteractionEnabled = true
        optionDButton.isUserInteractionEnabled = true
        
        //問題框設計
        questionTextView.text = currentQuestion.question
        questionTextView.textContainerInset = UIEdgeInsets(top: 14, left: 14, bottom: 14, right: 12)
        //圓角數值要是對話框高的一半
        //questionTextView.layer.cornerRadius = (questionTextView.frame.size.height) / 2
        questionTextView.layer.cornerRadius = 24.83
        //bubbleHornImageView.tintColor = .white
        questionTextView.backgroundColor = .white
        
        optionAButton.setTitle(currentQuestion.optionA, for: .normal)
        optionBButton.setTitle(currentQuestion.optionB, for: .normal)
        optionCButton.setTitle(currentQuestion.optionC, for: .normal)
        optionDButton.setTitle(currentQuestion.optionD, for: .normal)
        optionAButton.setTitleColor(.black, for: .normal)
        optionBButton.setTitleColor(.black, for: .normal)
        optionCButton.setTitleColor(.black, for: .normal)
        optionDButton.setTitleColor(.black, for: .normal)
        optionAButton.tintColor = UIColor(cgColor: CGColor(red: 103/255, green: 244/255, blue: 110/255, alpha: 1))
        optionBButton.tintColor = UIColor(cgColor: CGColor(red: 103/255, green: 244/255, blue: 110/255, alpha: 1))
        optionCButton.tintColor = UIColor(cgColor: CGColor(red: 103/255, green: 244/255, blue: 110/255, alpha: 1))
        optionDButton.tintColor = UIColor(cgColor: CGColor(red: 103/255, green: 244/255, blue: 110/255, alpha: 1))
        answerResultTextView.text = nil
        nextButton.tintColor = UIColor(cgColor: CGColor(red: 103/255, green: 244/255, blue: 110/255, alpha: 1))
        optionAButton.layer.borderWidth = 0
        optionBButton.layer.borderWidth = 0
        optionCButton.layer.borderWidth = 0
        optionDButton.layer.borderWidth = 0
        
        scoreGainLabel.text = "-"
        
        //製作 X分題 標籤
        //用text view才能調整內部距離，UILabel不行
        //scoreOfQuestionLabel.text = String("\(currentQuestion.score) 分題")
        scoreOfQuestionTextView.text = String("\(currentQuestion.score) 分題")
        scoreOfQuestionTextView.textContainerInset = UIEdgeInsets(top: 6, left: 4, bottom: 6, right: 4)
        scoreOfQuestionTextView.layer.cornerRadius = 4
        scoreOfQuestionTextView.layer.borderWidth = 0.8
        scoreOfQuestionTextView.layer.borderColor = CGColor(red: 1, green: 1, blue: 1, alpha: 1)
        scoreOfQuestionTextView.textColor = .white
        scoreOfQuestionTextView.backgroundColor = .clear
        
        poImageView.image = UIImage(named: "cpu")
        goImageView.image = UIImage(named: "playerThink")
        print((questionTextView.frame.size.height) / 2)
    }
    
    func updateBubble(){
        questionTextView.layer.cornerRadius = (questionTextView.frame.size.height) / 2
    }
    
    //將 QAViewController 資料傳至 GradeViewController
    @IBSegueAction func showGrade(_ coder: NSCoder) -> GradeViewController? {
        let controller = GradeViewController(coder: coder)
        controller?.sumOfScore = totalScore
        return controller
    }
}
