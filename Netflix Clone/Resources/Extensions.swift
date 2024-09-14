//
//  Extensions.swift
//  Netflix Clone
//
//  Created by Frederico del' Bidzho on 15.09.2024.
//

import Foundation

extension String {
    func capitalaiseFirstLetter() -> String {
        return self.prefix(1).uppercased() + self.lowercased().dropFirst()
    }
}
