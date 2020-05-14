//
//  Row2TableViewCell.swift
//  Teet
//
//  Created by Malak Sadek on 11/22/17.
//  Copyright © 2017 Malak Sadek. All rights reserved.
//

import UIKit

class Row2TableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        handSignsArabic()
        popup.isHidden = true;
        gifimage.isHidden = true;
        // Initialization code
    }

    @IBOutlet weak var popup: UIImageView!
    @IBOutlet weak var button1: UIButton!
  
    @IBOutlet weak var _10thDistrict: UILabel!
    @IBOutlet weak var rabaaSquare: UILabel!
    @IBOutlet weak var abaas: UILabel!
    @IBOutlet weak var gifimage: UIImageView!
    
    
    func handSignsArabic()
    {
        let userDef = UserDefaults.standard
        if(userDef.string(forKey: "Language") == "A")
        {
            _10thDistrict?.text = "الحي العاشر"
            rabaaSquare?.text = "ميدان رابعة"
            abaas?.text = "اول عباس - أول مكرم"
            _10thDistrict?.font =  UIFont(name: "DIN Next LT W23", size: 16)
            rabaaSquare?.font =  UIFont(name: "DIN Next LT W23", size: 16)
            abaas?.font =  UIFont(name: "DIN Next LT W23", size: 16)
        }
    }
    
    @IBAction func button1pressed(_ sender: Any) {
        button1.isOpaque = false;
        popup.isHidden = false;
        popup.frame = CGRect(x: -62, y: 13, width: popup.frame.size.width, height: popup.frame.size.height);
        gifimage.isHidden = false;
        let jeremyGif = UIImage.gifImageWithName("4.-10th-District")
        
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
        let jeremyGif = UIImage.gifImageWithName("5.-Abbass-StMakram-St")
        
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
        rabaaSquare.isHidden = true;
        gifimage.isHidden = false;
        let jeremyGif = UIImage.gifImageWithName("6.Rab3a-square")
        
        gifimage.image = jeremyGif;
        
        gifimage.frame = CGRect(x: 196, y: 35, width: popup.frame.size.width, height: popup.frame.size.height)
    }
    @IBAction func button3released(_ sender: Any) {
        button3.isOpaque = true;
        popup.isHidden = true;
        rabaaSquare.isHidden = false;
        gifimage.isHidden = true;
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
