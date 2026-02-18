// The Swift Programming Language
// https://docs.swift.org/swift-book

////// 12/2/2026 //////
//// Day 3: Functions Without Parameters (Functions)

/// Task A (Functions)
func printRoomIntro() {
    print("This program calculates room area and volume.")
    print("It also finds the usable space after furniture.")
}

/// Task B (Functions)
func printDivider() {
    print("--------")
}

/// Task C (Functions)
func printUnitsNote() {
    print("All measurements are in metres.")
}

/// Task D (Functions)
func printGoodbye() {
    print("Done. Thanks for using the calculator.")
}

////// 13/2/2026 //////
//// Day 4: Functions With Returns & Parameters (Functions)

/// Task A (Functions)
func roomVolume1() -> Double {
    // return volume using stored constants
    return 20
}

/// Task B (Functions)
func printArea(length: Double, width: Double) {
    // calculate and print area
    print("\(length * width)m²")
}

/// Task C (Functions)
func area(length: Double, width: Double) -> Double {
    // return area
    return length * width
}

/// Task D (Functions)
func volume2(length2: Double, width2: Double, height2: Double) -> Double {
    // return volume
    let volume = length2 * width2 * height2
    return volume
}

////// 17/02/2026 //////
//// Day 5: Function Documentation (Functions)

/// Task A (Functions)
/*
Calculates the floor area of a room.
: - Parameters:
:   - length: The room length in metres.
:   - width: The room width in metres.
: - Returns: The area in square metres.
*/
func floorArea(length: Double, width: Double) -> Double {
    return length * width
}

/// Task B (Functions)
/*
Calculates the volume of a room.
: - Parameters:
:   - length: The room length in metres.
:   - width: The room width in metres.
:   - height: The room width in metres.
: - Returns: The area in cubic metres.
*/
func roomVolume2(length: Double, width: Double, height: Double) -> Double {
    return length * width * height
}

/// Task C (Functions)
/*
Defines a room between small/large.
: - Parameters:
:   - volume: The room volume in metres.
: - Returns: "True" if room volume is less than 60m³, and "False" if room volume is more than 60m³
*/
func isRoomSmall(volume: Double) -> Bool {
    return volume < 60
}

/// Task D (Functions)
/*
Calculates the volume of a room.
: - Parameters:
:   - original: The original size in metres.
:   - reductionPercent: The reduction sector in metres.
: - Returns: The newly reduced size in metres.
*/
func reducedHeight(original: Double, reductionPercent: Double) -> Double {
    let multiplier = (100.0 - reductionPercent) / 100.0
    return original * multiplier
}

////// 19/02/2026 //////
//// Day 6: Scope (Functions {C})

/// Task C (Function)
func showArea() {
    // declare three constants
    let length = 16
    let width = 9
    let area = length * width  // calculate area and print it
    print(area)
}

// try to print the area here

////// ##/##/2026 //////
//// Day ##: ______ (Functions)

/// Task A (Functions)

/// Task B (Functions)

/// Task C (Functions)

/// Task D (Functions)

@main
struct SwiftPlayground {
    static func main() {

        ////// ##/##/2026 //////
        //// Day ##: ______ (Main)

        /// Task A (Main)

        /// Task B (Main)

        /// Task C (Main)

        /// Task D (Main)

        ////// 12/2/2026 //////
        //// Day 3: Functions Without Parameters (Main)

        /// Task A (Main)
        printRoomIntro()

        /// Task B (Main)
        printDivider()
        print("Summary here")
        printDivider()

        /// Task C (Main)
        printUnitsNote()

        // Task D (Main)
        printGoodbye()

        //// 13/2/2026 ////
        /// Day 4: Functions With Returns & Parameters (Main)

        // Task A (Main)
        let volume = roomVolume1()
        print("\(volume)m³")

        // Task B (Main)
        printArea(length: 4, width: 3)

        // Task C (Main)
        let area2 = area(length: 5, width: 4)
        print("\(area2)m²")

        // Task D (Main)
        let roomVolume1Cnst = volume2(length2: 50.0, width2: 40.0, height2: 30.0)
        print(roomVolume1Cnst)

        //// 17/02/2026 ////
        /// Day 5: Function Documentation (Main)

        // Task A (Main)
        let floorAreaCnst = floorArea(length: 6, width: 5)
        print("\(floorAreaCnst)m²")

        // Task B (Main)
        let roomVolume2Cnst = roomVolume2(length: 6, width: 5, height: 4)
        print("\(roomVolume2Cnst)m²")

        // Task C (Main)
        let isRoomSmallCnst = isRoomSmall(volume: 75)
        print(isRoomSmallCnst)

        // Task D (Main)
        let reducedHeightCnst = reducedHeight(original: 100, reductionPercent: 66.7)
        print("\(reducedHeightCnst)m")

        //// 19/02/2026 ////
        /// Day 6: Scope (Main)

        // Task A (Main)
        if true {
            let note = "Inside"
            print(note)  // print inside the block
        }

        print("Cannot find 'note' in scope")  // try to print note here
        /*
        This error happens because the variable was declared inside an if block, meaning that it can't be directly used outside of said if block
        */

        // Task B (Main)
        var status = ""

        if true {
            status = ("optimal")  // assign a value here
        }

        print(status)  // print status here

        // Task C (Main)
        showArea()

        // Task D (Main)
        let isLarge = false

        if isLarge {
            let label = ("Small") // declare a label and print it
        } else {
            let label = ("Large") // declare a label and print it
        }

        print ("Cannot find 'label' in scope") // try to print label here
    }
}
