//
//  DecodableRes.swift
//  iosCatApp
//
//  Created by  Ondrej Gardavsky on 12.06.2022.
//


import Foundation

struct DecodableRes<T: Decodable> {
    let body: [T]
}

extension DecodableRes: Decodable {}

