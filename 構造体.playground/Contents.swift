import UIKit

//カスタム型インスタンス
struct Song {
    let title: String
    let airtist: String
    let dulation: Int
}

let mySong = Song(title: "Buzz" , airtist: "Fizz" , dulation : 40)

//プロパティへアクセス
mySong.title
mySong.airtist
mySong.dulation

//可変性
struct Song2 {
    let title: String
    let artist: String
    let duration: Int
    var rating: Int
}
var song = Song2(title: "No,no,no", artist: "Fizz", duration: 150, rating: 0)
song.rating
song.rating = 4
song.rating

//計算プロパティ
struct Song3 {
    let title: String
    let airtist: String
    let duration : Int
    
    var formattedDuration: String {
        let minutes = duration / 60 //秒を分に変換
        let seconds = duration % 60 //余りを求める
        return "\(minutes)m \(seconds)s"
        
        }
    var formattedTitle: String {
        return "\(title) \(airtist)"

    }
}
let song3 = Song3.init(title: "No,no,no", airtist: "Fizz", duration: 150)
song3.formattedDuration
song3.formattedTitle

//インスタンスメソッド
struct Rectangle {
    let width: Int
    let height: Int
    var area: Int {
        return width * height
    }
    func biggerThan(_ rectangle: Rectangle) -> Bool {
        return area > rectangle.area
    }
}

let rectangle = Rectangle(width: 200, height: 300)
let otherRectangle = Rectangle(width: 200, height: 400)

rectangle.biggerThan(otherRectangle)
otherRectangle.biggerThan(rectangle)
