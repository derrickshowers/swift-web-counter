import Foundation
import PlaygroundSupport

var urlString = "https://en.wikipedia.org/wiki/Swift_(programming_language)"
var wordToCount = "Swift"

let semaphore = DispatchSemaphore(value: 0)

func visit(page url: URL) {

    let task = URLSession.shared.dataTask(with: url) { (data, response, error) in

        guard let data = data,
            let document = String(data: data, encoding: .utf8) else {
                semaphore.signal()
                return
        }

        parse(document: document)
    }

    print("🔎 Visiting page: \(url)")
    task.resume()
}

func parse(document: String) {

    let occurrences = document.components(separatedBy: wordToCount).count - 1
    print("\(wordToCount) is mentioned \(occurrences) times")
    semaphore.signal()
}

func storePassedArguments() {

    guard CommandLine.arguments.count > 1 else {
        return
    }

    if CommandLine.arguments.count == 3 {
        urlString = CommandLine.arguments[1]
        wordToCount = CommandLine.arguments[2]
    } else if CommandLine.arguments.count == 2 {
        urlString = CommandLine.arguments[1]
    }
}

storePassedArguments()
visit(page: URL(string: urlString)!)
semaphore.wait()

PlaygroundPage.current.needsIndefiniteExecution = true