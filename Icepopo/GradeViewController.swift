//
//  GradeViewController.swift
//  Icepopo
//
//  Created by 黃郁雯 on 2022/11/7.
//

import UIKit

class GradeViewController: UIViewController {

    @IBOutlet weak var totalScoreLabel: UILabel!
    @IBOutlet weak var passOrNotLabel: UILabel!
    
    @IBOutlet weak var passOrNotImageView: UIImageView!
    @IBOutlet weak var feelingOfScoreImageView: UIImageView!
    
    var sumOfScore: Int!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        showResult()
        // Do any additional setup after loading the view.
    }
    
    func showResult(){
        totalScoreLabel.text = String(sumOfScore)
        if sumOfScore >= 60{
            passOrNotImageView.image = UIImage(named: "greenEllipse")
            passOrNotLabel.text = "及格"
            passOrNotLabel.textColor = UIColor(cgColor: CGColor(red: 103/255, green: 244/255, blue: 110/255, alpha: 1))
        }else{
            passOrNotImageView.image = UIImage(named: "redEllipse")
            passOrNotLabel.text = "不及格"
            passOrNotLabel.textColor = UIColor(cgColor: CGColor(red: 243/255, green: 46/255, blue: 32/255, alpha: 1))
        }
        
        if (sumOfScore < 40) {
            feelingOfScoreImageView.image = UIImage(named: "cpu40")
        }else if (sumOfScore < 60){
            feelingOfScoreImageView.image = UIImage(named: "cpu60")
        }else if (sumOfScore < 80){
            feelingOfScoreImageView.image = UIImage(named: "cpu80")
        }else if (sumOfScore < 100){
            feelingOfScoreImageView.image = UIImage(named: "cpu99")
        }else{
            feelingOfScoreImageView.image = UIImage(named: "cpu100")
        }
        
        feelingOfScoreImageView.contentMode = .scaleAspectFill
    }
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
