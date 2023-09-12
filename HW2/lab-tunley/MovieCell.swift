//
//  MovieCell.swift
//
//
//  Created by Jorge Rivera on 9/11/23.
//

import UIKit
import Nuke

class MovieCell: UITableViewCell {

    @IBOutlet weak var moviePoster: UIImageView!
    
    @IBOutlet weak var movieTitle: UILabel!
    
    @IBOutlet weak var movieDescription: UILabel!

    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
 
        // Configure the view for the selected state
    }
    
    /// Configures the cell's UI for the given track.
    func configure(with movie: Movie) {
        movieTitle.text = movie.movieName
        movieDescription.text = movie.overview

        if let url = movie.poster_path {
            Nuke.loadImage(with: url, into: moviePoster)
        }
    }
}
