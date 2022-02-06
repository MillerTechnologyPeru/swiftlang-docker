// a swift test file

import Foundation

print("Hello, swifty world!")

func printToday(){
    let date = Date()
    let dateFormatter = DateFormatter()

    dateFormatter.dateStyle = .full
    dateFormatter.timeStyle = .full

    let dateString = dateFormatter.string(from: date as Date)

    print("FullStyle Date Format = \(dateString)")

}

printToday()
