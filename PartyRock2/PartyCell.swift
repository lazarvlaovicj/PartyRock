//
//  PartyCell.swift
//  PartyRock2
//
//  Created by PRO on 1/5/17.
//  Copyright © 2017 Lazar. All rights reserved.
//

import UIKit

class PartyCell: UITableViewCell {
    
    
    @IBOutlet weak var videoImagePreview: UIImageView!
    
    @IBOutlet weak var videoTitle: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func updateUI(cellConfig: PartyRockArray) {
        videoTitle.text = cellConfig.videoTitle
        //TODO: Set image URL
        let url = URL(string: cellConfig.imageURL)
        
        DispatchQueue.global().async {
            do{
                let data = try Data(contentsOf: url!)
                DispatchQueue.global().sync {
                    self.videoImagePreview.image = UIImage(data: data)
                }
            }catch{
                
            }
        }
        
    }
    
}
