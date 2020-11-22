//
//  Item.swift
//  UI-41
//
//  Created by にゃんにゃん丸 on 2020/11/22.
//

import SwiftUI

struct Item : Identifiable {
    var id = UUID().uuidString
    var title : String
    var subtitle : String
    var price : String
    var rating : String
    var image : String
}

var items = [
    Item(title: "コカ", subtitle: "コーラ", price: "100", rating: "150", image: "p1"),
    Item(title: "STARBUCKS", subtitle: "スタバ", price: "200", rating: "250", image: "p2"),
    Item(title: "コーラ", subtitle: "コカ", price: "300", rating: "350", image: "p3"),
    Item(title: "Cora", subtitle: "Coka", price: "400", rating: "450", image: "p4")
   
]
