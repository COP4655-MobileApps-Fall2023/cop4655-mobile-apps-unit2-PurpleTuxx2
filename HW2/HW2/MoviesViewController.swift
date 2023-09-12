//
//  ViewController.swift
//  HW2
//
//  Created by Jorge Rivera on 9/12/23.
//

import UIKit
import Nuke
import Foundation

class MoviesViewController: UIViewController {

    var movies: [Movie] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        movies = Movie.mockMovies
        print(movies)
        
        // Do any additional setup after loading the view.
    }


}

