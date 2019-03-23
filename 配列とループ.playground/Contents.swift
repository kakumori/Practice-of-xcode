import UIKit

var str = "Hello, playground"

//配列リテラル
let devices = ["iPhpne","iPad","iPod","iMac"]
//インデックス
devices[2]
//Count
let chores = ["Vacuuming", "Dusting", "Laundry", "Feed the dragons"]
let minutesPerChore = 10
let numberOfChores = chores.count
let choresTime = numberOfChores * minutesPerChore

//ループ 配列内のアイテムに順番にアクセス
let friends = ["Name", "Name2", "Name3", "Name4", "Name5"]
for friend in friends {
    let sparklyFriend = "✨\(friend)✨"
    print("Hey, \(sparklyFriend), please come to my party on Friday!")
}
print("Done, all friends have been invited.")

//可変の配列
var transitOptions = ["walk", "bus", "bike", "drive"]
//: まったく別のアイテムの配列を代入できます。
//:ただし、配列が保持するアイテムの型は変更できません。
transitOptions = ["rowboat", "paddle board", "submarine"]

//アイテムを追加する
var list = [String]() //可変の空の配列を作成
//: appnedメソッドを使う...単一もアイテムを追加
list.append("banana")
//: insertインスタンスメソッド
list.insert("Kumguat", at: 0)
//: 複合代入演算子+=を使ってアイテムの配列全体を追加
list += ["Strawberry", "Plum", "Watermelon"]

// アイテムを削除する
var numbers = [0,1,2,3,4]
let someNumber = numbers.remove(at: 2)
numbers

// 最初のアイテムを削除
let firstNumber = numbers.removeFirst()
numbers
//最後のアイテムを削除
let lasetNumber = numbers.removeLast()
numbers
//すべてのアイテムを削除
numbers.removeAll()
numbers

//配列の置換
var flavors = ["Chocolate", "Vanilla", "Strawberry", "Pistachio", "Rocky Road"]
flavors[0] = "Fudge Ripple"
