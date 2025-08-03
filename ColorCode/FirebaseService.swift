//
//  FirebaseService.swift
//  ColorCode
//
//  Created by Hariom Kumar on 02/08/25.
//

import Foundation
import FirebaseFirestore

class FirebaseService {
    private let db = Firestore.firestore()

    func uploadColor(_ color: HexColor, completion: @escaping (Bool) -> Void) {
        let data: [String: Any] = [
            "id": color.id,
            "hexCode": color.hexCode,
            "timestamp": Timestamp(date: color.timestamp)
        ]

        db.collection("colors").document(color.id).setData(data) { error in
            completion(error == nil)
        }
    }
}
