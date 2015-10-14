//
//  MenuTableViewController.swift
//  poetry
//
//  Created by tang on 15/8/2.
//  Copyright © 2015年 panda2r. All rights reserved.
//

import UIKit

class MenuTableViewController: UITableViewController {
    
    var poetryMenuList = [poetryMenu]()
    var row = 0
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Load the menu data
        loadMenuData()
        
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }
    
    
    func loadMenuData() {
        
        //set background pic
        let tvback = UIImage(named:"backMenu")
        self.view.backgroundColor = UIColor(patternImage: tvback!)
                
        let title00 = "枫桥夜泊\n楓橋夜泊\nMooring by Maple Bridge"
        let photo00 = UIImage(named: "Menu00.jpg")!
        let poetryMenu00 = poetryMenu(poetryTitle: title00, poetryMenuImage: photo00)
        
        let title01 = "登鹳雀楼\n鸛雀楼に登る\nOn the Stork Tower"
        let photo01 = UIImage(named: "Menu01.jpg")!
        let poetryMenu01 = poetryMenu(poetryTitle: title01, poetryMenuImage: photo01)

        let title02 = "望庐山瀑布\n廬山の瀑布を望む\nThe Waterfall in Mount Lu Viewed from Afar"
        let photo02 = UIImage(named: "Menu02.jpg")!
        let poetryMenu02 = poetryMenu(poetryTitle: title02, poetryMenuImage: photo02)

        let title03 = "早发白帝城\n早に白帝城を発す\nLeaving the White Emperor Town at Dawn"
        let photo03 = UIImage(named: "Menu03.jpg")!
        let poetryMenu03 = poetryMenu(poetryTitle: title03, poetryMenuImage: photo03)

        let title04 = "静夜思\n静夜思\nThoughts on a Tranquil Night"
        let photo04 = UIImage(named: "Menu04.jpg")!
        let poetryMenu04 = poetryMenu(poetryTitle: title04, poetryMenuImage: photo04)
        
        let title05 = "九月九日忆山东兄弟\n九月九日山中の兄弟を憶う\nThinking of My Brothers on Mountain-Climbing Day"
        let photo05 = UIImage(named: "Menu05.jpg")!
        let poetryMenu05 = poetryMenu(poetryTitle: title05, poetryMenuImage: photo05)

        let title06 = "春晓\n春暁\nSpring Morning"
        let photo06 = UIImage(named: "Menu06.jpg")!
        let poetryMenu06 = poetryMenu(poetryTitle: title06, poetryMenuImage: photo06)
        
        let title07 = "绝句\n絶句\nA Quatrain"
        let photo07 = UIImage(named: "Menu07.jpg")!
        let poetryMenu07 = poetryMenu(poetryTitle: title07, poetryMenuImage: photo07)
        
        let title08 = "秋夕\n秋夕\nAn Autumn Night"
        let photo08 = UIImage(named: "Menu08.jpg")!
        let poetryMenu08 = poetryMenu(poetryTitle: title08, poetryMenuImage: photo08)
        
        let title09 = "出塞\n從軍行\nOn the Frontier"
        let photo09 = UIImage(named: "Menu09.jpg")!
        let poetryMenu09 = poetryMenu(poetryTitle: title09, poetryMenuImage: photo09)
        
        let title10 = "塞下曲\n塞下の曲\nBorder Songs"
        let photo10 = UIImage(named: "Menu10.jpg")!
        let poetryMenu10 = poetryMenu(poetryTitle: title10, poetryMenuImage: photo10)

        let title11 = "暮江吟\n暮江吟\nSunset and Moonrise on the River"
        let photo11 = UIImage(named: "Menu11.jpg")!
        let poetryMenu11 = poetryMenu(poetryTitle: title11, poetryMenuImage: photo11)
        
        let title12 = "山行\n山行\nGoing up the Hill"
        let photo12 = UIImage(named: "Menu12.jpg")!
        let poetryMenu12 = poetryMenu(poetryTitle: title12, poetryMenuImage: photo12)
        
        let title13 = "咏柳\n柳を詠ず\nThe Willow"
        let photo13 = UIImage(named: "Menu13.jpg")!
        let poetryMenu13 = poetryMenu(poetryTitle: title13, poetryMenuImage: photo13)
        
        let title14 = "江雪\n江雪\nFishing in Snow"
        let photo14 = UIImage(named: "Menu14.jpg")!
        let poetryMenu14 = poetryMenu(poetryTitle: title14, poetryMenuImage: photo14)
        
        let title15 = "滁州西涧\n滁州の西澗\nOn the West Stream at Chuzhou"
        let photo15 = UIImage(named: "Menu15.jpg")!
        let poetryMenu15 = poetryMenu(poetryTitle: title15, poetryMenuImage: photo15)
        
        let title16 = "送元二使安西\n元二の安西に使するを送る\nA Farewell Song"
        let photo16 = UIImage(named: "Menu16.jpg")!
        let poetryMenu16 = poetryMenu(poetryTitle: title16, poetryMenuImage: photo16)
        
        let title17 = "别董大\n董大に別る\nFarewell to a Lutist"
        let photo17 = UIImage(named: "Menu17.jpg")!
        let poetryMenu17 = poetryMenu(poetryTitle: title17, poetryMenuImage: photo17)
        
        let title18 = "早春呈水部张十八员外\n早春\nEarly Spring Written for Secretary Zhang Ji"
        let photo18 = UIImage(named: "Menu18.jpg")!
        let poetryMenu18 = poetryMenu(poetryTitle: title18, poetryMenuImage: photo18)
        
        let title19 = "乐游原\n樂遊原に登る\nOn the Plain of Tombs"
        let photo19 = UIImage(named: "Menu19.jpg")!
        let poetryMenu19 = poetryMenu(poetryTitle: title19, poetryMenuImage: photo19)

        let title20 = "黄鹤楼送孟浩然之广陵\n黄鶴楼にて孟浩然の広陵に之くを送る\nSeeing Meng Haoran off the Yellow Crane Tower"
        let photo20 = UIImage(named: "Menu20.jpg")!
        let poetryMenu20 = poetryMenu(poetryTitle: title20, poetryMenuImage: photo20)
        
        let title21 = "夜上受降城闻笛\n夜受降城に上りて笛を聞く\nOn Hearing a Flute at Night Atop the Victor’s Wall"
        let photo21 = UIImage(named: "Menu21.jpg")!
        let poetryMenu21 = poetryMenu(poetryTitle: title21, poetryMenuImage: photo21)
        
        let title22 = "逢雪宿芙蓉山主人\n雪に逢ひ芙蓉山の主人に 宿す\nSeeking Shelter in Lotus Hill on a Snowy Night"
        let photo22 = UIImage(named: "Menu22.jpg")!
        let poetryMenu22 = poetryMenu(poetryTitle: title22, poetryMenuImage: photo22)
        
        let title23 = "逢入京使\n京に入る使いに逢う\nOn Meeting a Messenger Going to the Capital"
        let photo23 = UIImage(named: "Menu23.jpg")!
        let poetryMenu23 = poetryMenu(poetryTitle: title23, poetryMenuImage: photo23)
        
        let title24 = "凉州词\n涼州の詩\nStarting for the Front"
        let photo24 = UIImage(named: "Menu24.jpg")!
        let poetryMenu24 = poetryMenu(poetryTitle: title24, poetryMenuImage: photo24)
        
        poetryMenuList += [poetryMenu00,poetryMenu01,poetryMenu02,poetryMenu03,poetryMenu04,poetryMenu05,poetryMenu06,poetryMenu07,poetryMenu08,poetryMenu09,poetryMenu10,poetryMenu11,poetryMenu12,poetryMenu13,poetryMenu14,poetryMenu15,poetryMenu16,poetryMenu17,poetryMenu18,poetryMenu19,poetryMenu20,poetryMenu21,poetryMenu22,poetryMenu23,poetryMenu24]
        
        
       
        
          }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // // #warning Incomplete implementation, return the number of rows
        return poetryMenuList.count//meals.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cellIdentifier = "MenuTableViewCell"
        
        let cell = tableView.dequeueReusableCellWithIdentifier(cellIdentifier, forIndexPath: indexPath)as! MenuTableViewCell
        let aPoetryMenu = poetryMenuList[indexPath.row]
        
        // Configure the cell...
        cell.menuLabel.text = aPoetryMenu.poetryTitle
        cell.menuLabel.lineBreakMode = NSLineBreakMode.ByTruncatingTail
        cell.menuImage.image = aPoetryMenu.poetryMenuImage
        

        return cell
    }
    
    
    /*
    override func tableView(tableview: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
     }
    */
    
    
    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        
        // Pass the selected object to the new view controller.

        if segue.identifier == "ShowContent"{

            let cv = segue.destinationViewController as! ContentViewController
            
            if let selectedMenuCell = sender as? MenuTableViewCell{
                
                let indexPath = tableView.indexPathForCell(selectedMenuCell)!
               
                let menuRowNum = indexPath.row
                cv.rowNum = menuRowNum
               // print(cv.rowNum)
                
            }
            
        }
//        else if segue.identifier == "ShowLily"{
//            
//            
//        }

        
        
    }
    

}
