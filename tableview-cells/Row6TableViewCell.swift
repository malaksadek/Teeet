//
//  Row6TableViewCell.swift
//  Teet
//
//  Created by Malak Sadek on 11/22/17.
//  Copyright © 2017 Malak Sadek. All rights reserved.
//

import UIKit

class Row6TableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        popup.isHidden = true;
        handSignsArabic()
        gifimage.isHidden = true;
        // Initialization code
    }
    @IBOutlet weak var popup: UIImageView!
    @IBOutlet weak var button1: UIButton!
    
    @IBOutlet weak var _10thRamadan: UILabel!
    @IBOutlet weak var ringRoad: UILabel!
    @IBOutlet weak var Tagneed: UILabel!
    
    @IBOutlet weak var gifimage: UIImageView!
    
    func handSignsArabic()
    {
        let userDef = UserDefaults.standard
        if(userDef.string(forKey: "Language") == "A")
        {
            _10thRamadan?.text = "العاشر من رمضان"
            ringRoad?.text = "الدائري"
            Tagneed?.text = "تجنيد - أرض اللوا"
            _10thRamadan?.font =  UIFont(name: "DIN Next LT W23", size: 16)
            ringRoad?.font =  UIFont(name: "DIN Next LT W23", size: 16)
            Tagneed?.font =  UIFont(name: "DIN Next LT W23", size: 16)
        }
    }
    
    @IBAction func button1pressed(_ sender: Any) {
        button1.isOpaque = false;
        popup.isHidden = false;
        popup.frame = CGRect(x: -62, y: 13, width: popup.frame.size.width, height: popup.frame.size.height);
        
        gifimage.isHidden = false;
        let jeremyGif = UIImage.gifImageWithName("16. 10th of Ramadan")
        
        gifimage.image = jeremyGif;
        
        gifimage.frame = CGRect(x: -62, y: 35, width: popup.frame.size.width, height: popup.frame.size.height)
    }
    
    @IBAction func button1released(_ sender: Any) {
        button1.isOpaque = true;
        popup.isHidden = true;
        gifimage.isHidden = true;
    }
    @IBOutlet weak var button2: UIButton!
    
    @IBAction func button2pressed(_ sender: Any) {
        button2.isOpaque = false;
        popup.isHidden = false;
        popup.frame = CGRect(x: 67, y: 13, width: popup.frame.size.width, height: popup.frame.size.height);
        
        gifimage.isHidden = false;
        let jeremyGif = UIImage.gifImageWithName("17.-TagneedArd-el-Lewa")
        
        gifimage.image = jeremyGif;
        
        gifimage.frame = CGRect(x: 67, y: 35, width: popup.frame.size.width, height: popup.frame.size.height)
    }
    @IBAction func button2released(_ sender: Any) {
        button2.isOpaque = true;
        popup.isHidden = true;
        gifimage.isHidden = true;
    }
    @IBOutlet weak var button3: UIButton!
    
    @IBAction func button3pressed(_ sender: Any) {
        button3.isOpaque = false;
        popup.isHidden = false;
        popup.frame = CGRect(x: 196, y: 13, width: popup.frame.size.width, height: popup.frame.size.height);
        
        gifimage.isHidden = false;
        //let jeremyGif = UIImage.gifImageWithName("18- Ring Road.png")
        
        gifimage.image = UIImage(contentsOfFile: "18- Ring Road.png");
        
        gifimage.frame = CGRect(x: 196, y: 35, width: popup.frame.size.width, height: popup.frame.size.height)
    }
    @IBAction func button3released(_ sender: Any) {
        button3.isOpaque = true;
        gifimage.isHidden = true;
        popup.isHidden = true;
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
