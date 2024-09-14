//
//  Movie.swift
//  Netflix Clone
//
//  Created by Frederico del' Bidzho on 15.09.2024.
//

import Foundation

struct TrendingMovieResponse: Codable {
    let results: [Movie]
    
}

struct Movie: Codable{
    let id: Int
    let media_type: String?
    let original_title: String?
    let title: String?
    let poster_path: String?
    let overview: String?
    let vote_count: Int
    let release_date: String?
    let vote_average: Double
}
/*
 {
  "backdrop_path": "/rbEsJL59iW5mr4s1YnLocEFdO3Q.jpg",
  "id": 748167,
  "title": "Uglies",
  "original_title": "Uglies",
  "overview": "In a futuristic dystopia with enforced beauty standards, a teen boy love to play with their friend mandatory cosmetic surgery embarks on a journey to find her missing friend.",
  "poster_path": "/og1SH6we0UQx5XNIDSfxDD4S1Sp.jpg",
  "media_type": "movie",
  "adult": false,
  "original_language": "en",
  "genre_ids": [
    878,
    18,
    12
  ],
  "popularity": 98.42,
  "release_date": "2024-09-12",
  "video": false,
  "vote_average": 6.326,
  "vote_count": 72
},
*/

