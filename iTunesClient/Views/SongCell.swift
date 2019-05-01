//
//  SongCell.swift
//  iTunesClient
//
//  Created by Bobby Conti on 5/1/19.
//  Copyright © 2019 Bobby Conti. All rights reserved.
//

import UIKit

class SongCell: UITableViewCell {

    static let reuseIdentifier = "SongCell"
    
    @IBOutlet weak var songTitleLabel: UILabel!
    @IBOutlet weak var songRuntimeLabel: UILabel!

    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func configure(with viewModel: SongViewModel) {
        songTitleLabel.text = viewModel.title
        songRuntimeLabel.text = viewModel.runtime
    }

}
