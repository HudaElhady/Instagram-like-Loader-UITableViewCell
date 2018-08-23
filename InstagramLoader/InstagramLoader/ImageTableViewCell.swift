//
//  ImageTableViewCell.swift
//  InstagramLoader
//
//  Created by MIS on 8/22/18.
//  Copyright © 2018 Huda Elhady. All rights reserved.
//

import UIKit

class ImageTableViewCell: UITableViewCell {

    @IBOutlet weak var containerView: UIView!
    
    @IBOutlet weak var cellImage: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        cellImage.image = nil
    }

    func configure(with imageURL : String)
    {
        if let url =  URL(string: imageURL) {
            URLSession.shared.dataTask(with: url, completionHandler: { (data, _, error) in
                guard error == nil else {
                    return
                }
                DispatchQueue.main.async {
                    self.cellImage.image = UIImage(data: data!)
                }
                
            }).resume()
        }
    }

}
