// The Swift Programming Language
// https://docs.swift.org/swift-book

func readNumber(prompt: String) -> Double {
    print(prompt)
    var returnValue = -1.0

    // User Input for Room Dimensions
    guard let userInput = readLine(), let number = Double(userInput), number >= 0 else {
        print ("Invalid input, please enter a positive number with no more than 1 decimal place")
        return readNumber(prompt: prompt)
    }
    returnValue = number
    return returnValue
}

@main
struct SwiftPlayground {
    static func main() {
        print("Hello, world!")

        // Day 0: Introductory Spell

        //// 5&10/02/2025 ////
        /// Day 1&2: Recap Task

        // Magic Number Variable
        var furnitureVolumeMax = 2.0
        // Variables that *should* export the values from the loop to outside the loop
        var roomLength = readNumber(prompt: "Please enter the room length in m²")
        var roomWidth = readNumber(prompt: "Please enter the room width in m²")
        var roomHeight = readNumber(prompt: "Please enter the room height in m²")

        let floorArea = roomLength * roomWidth
        print ("Room Area: \(floorArea)m²")
        let roomVolume = floorArea * roomHeight
        print ("Room Volume: \(roomVolume)m³")
        
        // Furniture Process Starts
        var furnitureVolumes = [1.2, 0.0, 2.5, 0.6, 1.0]
        var totalFurnitureVolume = 0.0

        furnitureVolumes.enumerated().forEach { furniture, singleFurnitureVolume in
            print("Item \(furniture + 1): \(singleFurnitureVolume)m³")
            if singleFurnitureVolume > furnitureVolumeMax {
                print("Oversized item detected.")
            }
            totalFurnitureVolume += singleFurnitureVolume
        }

        var usableVolume = roomVolume - totalFurnitureVolume
        print ("Volume in room remaining: \(usableVolume)m³")

        //// 5&10/02/2025 ////
        /// Day 3: Functions Without Parametres
        }
}