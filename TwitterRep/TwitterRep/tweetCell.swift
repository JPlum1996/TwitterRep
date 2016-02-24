//
//  tweetCell.swift
//  TwitterRep
//
//  Created by Joe Plumitallo on 2/23/16.
//  Copyright © 2016 Joe Plumitallo. All rights reserved.
//

import UIKit

class tweetCell: UITableViewCell
 {
    
    

    @IBOutlet weak var sname: UILabel!
    @IBOutlet weak var uname: UILabel!
    @IBOutlet weak var tweetBody: UILabel!
    @IBOutlet weak var propicImageView: UIImageView!

    var tweet: Tweet!{
        didSet{
            
            tweetBody.text = tweet.text as? String
            uname.text = tweet.user?.name as? String
            sname.text = tweet.user?.screenname as? String
            propicImageView.setImageWithURL((tweet.user?.profileUrl)!)
        
        }
        
        
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
