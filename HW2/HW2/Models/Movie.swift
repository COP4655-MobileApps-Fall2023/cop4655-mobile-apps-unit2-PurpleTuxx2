//
//  Movie.swift
//  HW2
//
//  Created by Jorge Rivera on 9/12/23.
//

import UIKit
import Foundation

struct Movie {
    let movieName: String
    let overview: String
    let poster_path: URL
    let voteAverage: Double
    let popularity: Double
    let vote_Count: Int
}

extension Movie {
    static var mockMovies: [Movie] = [
        Movie(movieName: "Meg 2: The Trench",
              overview: "An exploratory dive into the deepest depths of the ocean of a daring research team spirals into chaos when a malevolent mining operation threatens their mission and forces them into a high-stakes battle for survival.",
              poster_path: URL(string: "/4m1Au3YkjqsxF8iwQy0fPYSxE0h.jpg")!,
              voteAverage: 7,
              popularity: 3930.369,
              vote_Count: 1637),
        Movie(movieName: "Barbie",
              overview: "Barbie and Ken are having the time of their lives in the colorful and seemingly perfect world of Barbie Land. However, when they get a chance to go to the real world, they soon discover the joys and perils of living among humans.",
              poster_path: URL(string: "/iuFNMS8U5cb6xfzi51Dbkovj7vM.jpg")!,
              voteAverage: 7.3,
              popularity: 3534.928,
              vote_Count: 4122),
        Movie(movieName: "The Nun II",
              overview: "In 1956 France, a priest is violently murdered, and Sister Irene begins to investigate. She once again comes face-to-face with a powerful evil.",
              poster_path: URL(string: "/5gzzkR7y3hnY8AD1wXjCnVlHba5.jpg")!,
              voteAverage: 6.8,
              popularity: 2547.745,
              vote_Count: 105),
        Movie(movieName: "Strays",
              overview: "When Reggie is abandoned on the mean city streets by his lowlife owner, Doug, Reggie is certain that his beloved owner would never leave him on purpose. But once Reggie falls in with Bug, a fast-talking, foul-mouthed stray who loves his freedom and believes that owners are for suckers, Reggie finally realizes he was in a toxic relationship and begins to see Doug for the heartless sleazeball that he is.",
              poster_path: URL(string: "/n1hqbSCtyBAxaXEl1Dj3ipXJAJG.jpg")!,
              voteAverage: 7.4,
              popularity: 1451.979,
              vote_Count: 200),
        Movie(movieName: "Sound of Freedom",
              overview: "The story of Tim Ballard, a former US government agent, who quits his job in order to devote his life to rescuing children from global sex traffickers.",
              poster_path: URL(string: "/kSf9svfL2WrKeuK8W08xeR5lTn8.jpg")!,
              voteAverage: 8,
              popularity: 1153.785,
              vote_Count: 438),
    ]
}

