//
//  ContentViewController.swift
//  poetry
//
//  Created by tang on 15/8/4.
//  Copyright © 2015年 panda2r. All rights reserved.
//

import UIKit
import AVFoundation
//import Foundation

class ContentViewController: UIViewController {
    
//    required init(coder aDecoder: NSCoder) {
//        super.init(coder: aDecoder)
//    }
    
    
//     init(style: UITableViewStyle) {
//        super.init(style: style)
//    }

    

    

   
    @IBOutlet weak var soundContainer: UIView!
    
    @IBOutlet weak var backPic: UIImageView!
    
    var Zhou,Zhou1,Zhou2,Zhou3,Zhou4: AVAudioPlayer!
    
    
    var Tang,Tang1,Tang2,Tang3,Tang4: AVAudioPlayer!

   
    @IBAction func playZhou(sender: AnyObject) {Zhou.play()}
    @IBAction func playZhou1(sender: AnyObject) {Zhou1.play()}
    @IBAction func playZhou2(sender: AnyObject) {Zhou2.play()}
   
    
    @IBAction func playZhou3(sender: AnyObject) {Zhou3.play()
    }
    @IBAction func playZhou4(sender: AnyObject) {Zhou4.play()}
    
    @IBAction func playTang(sender: AnyObject) {Tang.play()}
    @IBAction func playTang1(sender: AnyObject) {Tang1.play()}
    @IBAction func playTang2(sender: AnyObject) {Tang2.play()}
    @IBAction func playTang3(sender: AnyObject) {Tang3.play()}
    @IBAction func playTang4(sender: AnyObject) {Tang4.play()}

    var rowNum=0
    var poetryName=""
    
    var aImageView:UIImageView!
    var aContentImage:UIImage!
    var aScrollView:UIScrollView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        prepareToPlayAndShowContent()

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
    
    
    func setupAudioPlayerWithFile(file:NSString, type:NSString) -> AVAudioPlayer  {
        let path = NSBundle.mainBundle().pathForResource(file as String, ofType: type as String)
        let url = NSURL.fileURLWithPath(path!)
        var audioPlayer:AVAudioPlayer?
        
        do {
            try audioPlayer = AVAudioPlayer(contentsOfURL: url)
        } catch {
            print("NO AUDIO PLAYER")
        }
        
        return audioPlayer!
    }
    
    
    func prepareToPlayAndShowContent(){
        
        switch(rowNum){
            case 0: poetryName  = "00枫桥夜泊"
            case 1: poetryName  = "01登鹳雀楼"
            case 2: poetryName  = "02望庐山瀑布"
            case 3: poetryName  = "03早发白帝城"
            case 4: poetryName  = "04静夜思"
            case 5: poetryName  = "05九月九日忆山东兄弟"
            case 6: poetryName  = "06春晓"
            case 7: poetryName  = "07绝句"
            case 8: poetryName  = "08秋夕"
            case 9: poetryName  = "09出塞"
            case 10: poetryName = "10塞下曲"
            case 11: poetryName = "11暮江吟"
            case 12: poetryName = "12山行"
            case 13: poetryName = "13咏柳"
            case 14: poetryName = "14江雪"
            case 15: poetryName = "15滁州西涧"
            case 16: poetryName = "16送元二使安西"
            case 17: poetryName = "17别董大"
            case 18: poetryName = "18早春"
            case 19: poetryName = "19乐游原"
            case 20: poetryName = "20黄鹤楼送孟浩然之广陵"
            case 21: poetryName = "21夜上受降城闻笛"
            case 22: poetryName = "22逢雪宿芙蓉山主人"
            case 23: poetryName = "23逢入京使"
            case 24: poetryName = "24凉州词"
            default: print("")
        }
        
      
        Zhou  = setupAudioPlayerWithFile("\(poetryName)_周老师", type: "mp3")
        Zhou1 = setupAudioPlayerWithFile("\(poetryName)_周老师_句1", type: "mp3")
        Zhou2 = setupAudioPlayerWithFile("\(poetryName)_周老师_句2", type: "mp3")
        Zhou3 = setupAudioPlayerWithFile("\(poetryName)_周老师_句3", type: "mp3")
        Zhou4 = setupAudioPlayerWithFile("\(poetryName)_周老师_句4", type: "mp3")
        Tang  = setupAudioPlayerWithFile("\(poetryName)_唐老师", type: "mp3")
        Tang1 = setupAudioPlayerWithFile("\(poetryName)_唐老师_句1", type: "mp3")
        Tang2 = setupAudioPlayerWithFile("\(poetryName)_唐老师_句2", type: "mp3")
        Tang3 = setupAudioPlayerWithFile("\(poetryName)_唐老师_句3", type: "mp3")
        Tang4 = setupAudioPlayerWithFile("\(poetryName)_唐老师_句4", type: "mp3")
        
        
        //background setting
        backPic.image = UIImage(named:"back\(poetryName)")
                
        //poetrycontent scrollview
        aImageView=UIImageView(frame:CGRectMake(0, 0, self.view.frame.width, self.view.frame.width*4.75))
        aContentImage = UIImage(named:"content\(poetryName)")
        aImageView.image = aContentImage
        aScrollView = UIScrollView(frame:view.bounds)
        aScrollView.backgroundColor=UIColor.lightTextColor()
        aScrollView.contentSize = aImageView.bounds.size
        aScrollView.addSubview(aImageView)
        view.addSubview(aScrollView)
        
        //bring sound buttons to front
        self.view.bringSubviewToFront(soundContainer)
        }

    
    
    
    
    
    
    

}
