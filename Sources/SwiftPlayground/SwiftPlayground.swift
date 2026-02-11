// The Swift Programming Language
// https://docs.swift.org/swift-book

@main
struct SwiftPlayground {
    static func main() {
        print("Hello, world!")

        // 5/02/2025 //


    // Prevents Crash Error
    var lengthRoom = 0
    var widthRoom = 0
    var heightRoom = 0

    // User inputs dimension data for calculating room volume
    print("Enter room length:")
    if let lengthInput = readLine(), var length = Double(lengthInput), var lengthRoom = length {
    }
    print("Enter room width:")
    if let widthInput = readLine(), var width = Double(widthInput) {
    }
    print("Enter room height:")
    if let heightInput = readLine(), var height = Double(heightInput) {
    }
    
    // Basic Intermediate Mathing
    let roomArea = lengthRoom * widthRoom
    let roomVolume = lengthRoom * widthRoom * heightRoom
    print ("The floor is \(roomArea)m² big!")
    print ("The room is \(roomVolume)m² big!")
    }
}

