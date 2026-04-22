// The Swift Programming Language
// https://docs.swift.org/swift-book

@main
struct SwiftPlayground {
    static func main() {
        //// Constants and Variables
        let notPlural = 1
        var pluralS = "s"

        /// Alters the dialogue grammatically to account for plurals.
        /* Parameters:
        :   quantity - Value of variable that affects plural dialogue
        */
        func checkPlural(of quantity: Int) {
            if quantity == notPlural {
                pluralS = ""
            } else {
                pluralS = "s"
            }
        }
    }
}