//
//  DataManager.swift
//  ContackList
//
//  Created by Александр on 7.09.21.
//


class DataManager {
    
    static let shared = DataManager()
    
    private init() {}
    
    let firstNames = ["Alex", "Anna", "Roman", "John",
                      "David", "Nikolay", "Federic",
                      "Elena", "Darya", "Svetlana"]
    
    let lastNames = ["Smith", "Davidson", "Morgan",
                     "Wayne", "Stanley", "Green", "Rabinivich",
                     "Stivents", "Superstar", "Saito"]
    
    let phoneNumbers = ["+79323423434", "+34957281924", "+84028501259",
                        "+48673028456", "+58273456013", "+95830185629",
                        "+94765431033", "+37503947234", "+12475930486", "+64038495827"]
    
    let email = ["nawsefm@gmail.com", "rgdr@gmail.com", "ght7drg@gmail.com",
                 "xcvzsa@gmail.com", "qwerts@gmail.com", "plplkop@gmail.com",
                 "zdvlkfd@gmail.com", "gsmeqwv@gmail.com", "srogortiunb@gmail.com", "peority@gmail.com"]
}
