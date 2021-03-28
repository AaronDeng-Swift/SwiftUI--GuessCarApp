//
//  CarView.swift
//  GuessCar
//
//  Created by Aaron on 2021/3/28.
//

import SwiftUI

struct Car: Identifiable {
    var id: Int
    var pictureName: String = ""
    var ChineseName: String = ""
}

let carData: [Car] = [
    Car(id: 0, pictureName: "AIXAM", ChineseName: "AIXAM"),
    Car(id: 1, pictureName: "aodi", ChineseName: "奥迪"),
    Car(id: 2, pictureName: "baoshijie", ChineseName: "保时捷"),
    Car(id: 3, pictureName: "benchi", ChineseName: "奔驰"),
    Car(id: 4, pictureName: "bentian", ChineseName: "本田"),
    Car(id: 5, pictureName: "biaozhi", ChineseName: "标志"),
    Car(id: 6, pictureName: "bieke", ChineseName: "别克"),
    Car(id: 7, pictureName: "bizharuini", ChineseName: "比扎瑞尼"),
    Car(id: 8, pictureName: "botong",ChineseName: "博通"),
    Car(id: 9, pictureName: "BYD", ChineseName: "比亚迪"),
    Car(id: 10, pictureName: "dazhong", ChineseName: "大众"),
    Car(id: 11, pictureName: "dongnan", ChineseName: "东南"),
    Car(id: 12, pictureName: "fengbote", ChineseName: "风伯特"),
    Car(id: 13, pictureName: "fengtian", ChineseName: "丰田"),
    Car(id: 14, pictureName: "zhongxing", ChineseName: "中兴"),
    Car(id: 15, pictureName: "yiqi", ChineseName: "一汽"),
    Car(id: 16, pictureName: "xuetielong", ChineseName: "雪铁龙"),
    Car(id: 17, pictureName: "xuefulan", ChineseName: "雪弗兰"),
    Car(id: 18, pictureName: "leikesasi", ChineseName: "雷克萨斯"),
    Car(id: 19, pictureName: "leinuo", ChineseName: "雷诺"),
    Car(id: 20, pictureName: "lingmu", ChineseName: "铃木"),
]
