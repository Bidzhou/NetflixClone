//
//  TV.swift
//  Netflix Clone
//
//  Created by Frederico del' Bidzho on 15.09.2024.
//

import Foundation

struct TrendingTVResponse: Codable{
    let results: [TV]
}

struct TV: Codable{
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
 "results": [
   {
     "backdrop_path": "/AvH03Lj5lMYxmlPc7prNQLWw6JY.jpg",
     "id": 67557,
     "name": "The Grand Tour",
     "original_name": "The Grand Tour",
     "overview": "Jeremy Clarkson, Richard Hammond and James May are back with a show about adventure, excitement and friendship... as long as you accept that the people you call friends are also the ones you find extremely annoying. Sometimes it's even a show about cars. Follow them on their global adventure.",
     "poster_path": "/3Pcqu6QliBWJ8vsOVClVLddPnZw.jpg",
     "media_type": "tv",
     "adult": false,
     "original_language": "en",
     "genre_ids": [
       10764,
       99,
       35,
       10767
     ],
     "popularity": 167.308,
     "first_air_date": "2016-11-17",
     "vote_average": 8,
     "vote_count": 698,
     "origin_country": [
       "GB"
     ]
   },
 */
