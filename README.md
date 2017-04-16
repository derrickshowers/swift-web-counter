# Swift Web Counter

Playing around with scripting in Swift! I'm not an expert (or even any good) at writing bash scripts - I have to look every little thing up just to complete the simplest of tasks. 😳 But... what if I could write scripts in Swift instead! 🤔😮 The neatest part? Xcode Playgrounds can be used white writing scripts!! 🎉 Then, just copy the script to a .swift file, make it executable (`chmod +x FileName.swift`), remove some of the playground dependencies (e.g. `import PlaygroundSupport`), and run it in terminal.

## Try it out

To try it out, clone this repo and try run the following commands:

```
chmod +x SwiftWebCounter.swift
./SwiftWebCounter.swift https://apple.com iOS
```

## Resources

* My interest was sparked by [this Medium post](https://medium.com/swiftly-swift/how-to-make-a-web-crawler-in-swift-3ed4977a181b) I came across the other day.
* [Scripting in Swift](https://krakendev.io/blog/scripting-in-swift)
* [Selenops](https://github.com/zntfdr/Selenops/blob/master/Script/Selenops.swift) - mentioned at the end of the article, but worth pointing out the README has a quick, easy to understand overview of how to execute Swift scripts.
