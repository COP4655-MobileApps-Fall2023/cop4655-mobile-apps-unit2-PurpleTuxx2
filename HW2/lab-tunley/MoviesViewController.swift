//
//  ViewController.swift
//
//
//  Created by Justin Rivera on 9/11/22.
//

import UIKit
import Nuke

class MoviesViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath) as! MovieCell

        let movie = movies[indexPath.row]

        cell.configure(with: movie)

        return cell
    }

 
    @IBOutlet weak var tableView: UITableView!
    
    var movies: [Movie] = []
        
        override func viewDidLoad() {
            super.viewDidLoad()
            movies = Movie.mockMovies
            print(movies)
            
            tableView.dataSource = self
            tableView.delegate = self // Set the delegate
            
        }
    // Implement the didSelectRowAt method
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "showDetail", sender: self)
    }
    // Implement prepare(for:sender:) method
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showDetail" {
            if let indexPath = tableView.indexPathForSelectedRow {
                let selectedMovie = movies[indexPath.row]
                let destinationVC = segue.destination as! DetailViewController
                destinationVC.movie = selectedMovie
            }
        }
    }
    
}
