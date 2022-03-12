//
//  Person.swift
//  MyInformationApp
//
//  Created by Никита on 11.03.2022.
//


struct Person {
    let name: String
    let surname: String
    
    static func getPersons() -> Person {
        Person(name: "Nikita", surname: "Yashin")
    }
}


