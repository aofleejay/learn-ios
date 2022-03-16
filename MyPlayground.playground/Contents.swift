import UIKit

let constant: Double = 3.14
var variable = 10
let message = "hello world \(constant)"
message.uppercased()
message.count

if message.count == 16 {
    print("Hi")
}

var fruits = ["apple", "mango"]
fruits.append("orange")
fruits.count

for index in 0...fruits.count - 1 {
    print(fruits[index])
}

for fruit in fruits {
    print(fruit)
}

let emojiDict = [
    "👻": "ghost",
    "🤖": "robot",
]

if let emoji = emojiDict["🤖"] {
    print(emoji)
    let containerView = UIView(frame: CGRect(x: 0, y: 0, width: 300, height: 300))
    containerView.backgroundColor = UIColor.orange
    
    let emojiLabel = UILabel(frame: CGRect(x: 95, y: 20, width: 150, height: 150))
    emojiLabel.text = "🤖"
    emojiLabel.font = UIFont.systemFont(ofSize: 100.0)
    
    let meaningLabel = UILabel(frame: CGRect(x: 110, y: 100, width: 150, height: 150))
    meaningLabel.text = emoji
    meaningLabel.font = UIFont.systemFont(ofSize: 30)
    meaningLabel.textColor = UIColor.white
    
    containerView.addSubview(emojiLabel)
    containerView.addSubview(meaningLabel)
}

var jobTitle: String?
jobTitle = "Engineer"

if let jobTitle = jobTitle {
    print("I'm " + jobTitle)
}
