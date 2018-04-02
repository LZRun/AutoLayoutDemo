//
//  AutoLayoutExampleViewController.swift
//  AutoLayoutDemo
//
//  Created by LZR on 02/04/2018.
//  Copyright © 2018 Run. All rights reserved.
//

import UIKit

class AutoLayoutExampleViewController: UIViewController, UITextFieldDelegate {
    /// 内容输入框tag值
    private let contentTextFieldTag = 1
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var contentLabel: UILabel!
    
    @IBOutlet weak var backGroundViewHeight: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.endEditing(true)
        if textField.tag == contentTextFieldTag { // 内容
            contentLabel.text = textField.text
        } else { // 标题
            titleLabel.text = textField.text
        }
        return true
    }


    @IBAction func changeAction(_ sender: UIButton) {
        sender.isSelected = !sender.isSelected
        // 使用UILayoutPriorityRequired会奔溃
        backGroundViewHeight.priority = sender.isSelected ? UILayoutPriority.init(999) : .defaultLow
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
