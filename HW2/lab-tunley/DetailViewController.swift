//
//  DetailViewController.swift
//
//
//  Created by Justin Rivera on 9/11/22.
//

import UIKit
import Nuke

class DetailViewController: UIViewController {
    
    @IBOutlet weak var moviePosterView: UIImageView!
    
    @IBOutlet weak var movieTitleLabel: UILabel!
    
    @IBOutlet weak var voteAverageLabel: UILabel!
    
    @IBOutlet weak var voteTotalLabel: UILabel!
    @IBOutlet weak var popularityLabel: UILabel!
    
    @IBOutlet weak var descriptionLabel: UITextView!
    
    // TODO: Pt 1 - Add a track property// A property to store the track object.// We can set this property by passing along the track object associated with the track the user tapped in the table view.
    var movie: Movie!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Check if movie or movie.poster_path is nil
        guard let movie = movie, let posterPath = movie.poster_path else {
            print("Movie or poster path is nil")
            return
        }

        // Check if moviePosterView is nil
        if moviePosterView == nil {
            print("moviePosterView is nil")
            return
        }

        // If you've reached this point, none of the above are nil
        Nuke.loadImage(with: posterPath, into: moviePosterView)
        
        // Populate the labels with movie details
        movieTitleLabel.text = movie.movieName
        voteAverageLabel.text = "Vote Average: \(movie.voteAverage)"
        voteTotalLabel.text = "Total Votes: \(movie.vote_Count)"
        popularityLabel.text = "Popularity: \(movie.popularity)"
        descriptionLabel.text = movie.overview
    }




}
