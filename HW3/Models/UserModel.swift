//
//  UserModel.swift
//  HW3
//
//  Created by Chernoskutob Vladislav on 29.10.2021.
//

import Foundation

struct UserModel {
    var name: String
    var age: Int
    var userDescription: String
    var phone: String
    var photo: String
    var userName: String
    var password: String
}

extension UserModel {
    static func getUser() -> UserModel {
        return UserModel(
            name: "Carl Tanzler",
            age: 55,
            userDescription: "He was a Germanwho studied in Freiburg University majoring in medicine in 1837. In 1840 he immigrated to Venezuela, establishing in La Guaira and worked attending the poor peoplesometimes for free and in 1854 he founded the Children Hospital of Caracas.",
            phone: "4 992 992 33 33",
            photo: "https://im0-tub-ru.yandex.net/i?id=0ec8bdbfba6645210266bf5414ee3377&ref=rim&n=33&w=237&h=300",
            userName: "UserName",
            password: "password"
        )
    }
}
