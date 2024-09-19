//
//  YouTubeSearchResponse.swift
//  Netflix Clone
//
//  Created by Frederico del' Bidzho on 16.09.2024.
//

import Foundation
struct YouTubeSearchResponse: Codable {
    let items: [VideoElement]
}

struct VideoElement: Codable {
    let id: IdVideoElement
    
}

struct IdVideoElement: Codable {
    let kind: String
    let videoId: String
}
