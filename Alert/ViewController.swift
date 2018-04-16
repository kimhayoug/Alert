//
//  ViewController.swift
//  Alert
//
//  Created by D7703_23 on 2018. 4. 16..
//  Copyright © 2018년 D7703_23. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBAction func btpressed(_ sender: Any) {
        let myAlert = UIAlertController(title: "알람",message: "설정된 시간이 되었습니다",preferredStyle: .actionSheet)
        let okAction = UIAlertAction(title: "종료", style: .default) { (action: UIAlertAction) -> Void in
            self.view.backgroundColor = UIColor.red
        }
        
        let cancelAction = UIAlertAction(title: "취소", style: .cancel, handler: { (action: UIAlertAction) -> Void in
            self.view.backgroundColor = UIColor.green
        })
        
        let testAction = UIAlertAction(title: "테스트", style: .default, handler:  nil)
        
        myAlert.addAction(okAction)
        myAlert.addAction(cancelAction)
        myAlert.addAction(testAction)
        
        present(myAlert, animated: true, completion: nil)
    }


}

