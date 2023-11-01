//
//  CodableBundle.swift
//  Medict
//
//  Created by Jahnavi Kari on 10/15/23.
//

import Foundation

extension Bundle {
    func decode<T: Codable>(_  file: String) -> T {
        // Locate JSON
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Failed to locate \(file) in bundle.")
        }
        
        //Create data property
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Failed to load \(file) from bundle.")
        }
        
        // Create decoder
        let decoder = JSONDecoder()
        
        // Create decoded property
        guard let decodedData = try? decoder.decode(T.self, from: data) else {
            fatalError("Failed to decode \(file) from bundle. ")
        }
        
        // Return decoded data
        return decodedData
    }
}
