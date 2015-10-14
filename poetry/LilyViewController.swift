//
//  LilyViewController.swift
//  poetry
//
//  Created by tang on 15/8/8.
//  Copyright © 2015年 panda2r. All rights reserved.
//

import UIKit

class LilyViewController: UIViewController,UIAlertViewDelegate {

    
    @IBOutlet weak var backPic: UIImageView!
    

  
    @IBAction func copyWechat(sender: AnyObject) {
                let pasteboard剪贴板 = UIPasteboard.generalPasteboard()
                pasteboard剪贴板.string = "LILY_MAKEUP"
        
               // let copied已复制 = UIAlertView(title: "👏👏👏👏👏👏👏👏", message: "", delegate: self, cancelButtonTitle: "OK")
        
        
               // copied已复制.show()
        
        let alert = UIAlertController(title: "👏👏👏👏👏👏👏👏", message: "", preferredStyle: UIAlertControllerStyle.Alert)
        
        let okButton = UIAlertAction(title: "OK", style: UIAlertActionStyle.Default){(okSelected) -> Void in
            
        }
        
        alert.addAction(okButton)
        
        self.presentViewController(alert, animated: true, completion: nil)

        
       
    }
    
    

    
    
    @IBAction func copyQQ(sender: AnyObject) {
       let pasteboard剪贴板 = UIPasteboard.generalPasteboard()
       pasteboard剪贴板.string = "632592644"
        
       //let copied已复制 = UIAlertView(title: "👏👏👏👏👏👏👏👏", message: "", delegate: self, cancelButtonTitle: "OK")
      // copied已复制.show()
        let alert = UIAlertController(title: "👏👏👏👏👏👏👏👏", message: "", preferredStyle: UIAlertControllerStyle.Alert)
        
        let okButton = UIAlertAction(title: "OK", style: UIAlertActionStyle.Default){(okSelected) -> Void in
            
        }
        
        alert.addAction(okButton)
        
        self.presentViewController(alert, animated: true, completion: nil)
        

        
    }
   
    @IBOutlet weak var copyLabel1: UILabel!
    @IBOutlet weak var copyLabel2: UILabel!
    @IBOutlet weak var location: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
  
        // Do any additional setup after loading the view.
        
        //setting background
        backPic.image = UIImage(named:"lily")
        
      //location.text
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
