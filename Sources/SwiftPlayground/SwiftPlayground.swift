// The Swift Programming Language
// https://docs.swift.org/swift-book

func showWelcome1() {
    print("Welcome")
}

func printTitle() {
    print("Room calculator")
}

func printDivider1() {
    print("------------")
}

func printRoomIntro1() {
    print("This program calculates room area.")
    print("It also calculates room volume.")
}

func showWelcome2() {
    print("Welcome to the room calculator")
}

func printSummaryHeader() {
    print("Summary")
    print("-------")
}

func printNewSection() {
    print("\n--- New calculation ---")
}

func showWelcome3() {
    print("Welcome")
}

func printRoomIntro2() {
    print("This program calculates room area and volume.")
    print("It also finds the usable space after furniture.")
}

func printDivider2() {
    print("--------")
}

func printUnitsNote() {
    print("All measurements are in metres.")
}

func printGoodbye() {
    print("Done. Thanks for using the calculator.")
}

@main
struct SwiftPlayground {
    static func main() {
        showWelcome1()
        printTitle()
        printDivider1()
        printDivider1()
        printRoomIntro1()
        showWelcome2()
        printSummaryHeader()
        printSummaryHeader()
        // more output here
        printSummaryHeader()
        printNewSection()
        printNewSection()
        showWelcome3()
        showWelcome3()
        printRoomIntro2()
        printDivider2()
        print("Summary here")
        printDivider2()
        printUnitsNote()
        printGoodbye()
    }
}
