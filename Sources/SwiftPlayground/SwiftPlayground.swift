// The Swift Programming Language
// https://docs.swift.org/swift-book

@main
struct SwiftPlayground {
    static func main() {
        ////// 23/04/2026-4/05/2026 //////
        ///// Day 22: Summative Assessment #1 - Kumara Shop

        // 00 = Placeholder Number

        /// Prints Units for Funds.
        /*
        : - Parameters:
        :   - funds: Total funds used during instance.
        : - Returns: Funds with units.
        */
        /// You start with 50$ in your wallet
        var walletFunds = 50.0
        func print$(after funds: Double) -> String {
            /// Adds unit “$” to funds in dialogue
            var unitFunds = "$\(funds)"
            return unitFunds
        }

        //// Weight Variables
        /// Prints Units for Weight.
        /*
        : - Parameters:
        :   - weight: Total weight of kumara used during instance.
        : - Returns: Weight with units.
        */
        func printKg(after weight: Double) -> String {
            /// Adds unit “kg” to weight in dialogue
            var unitWeight = "\(weight)kg"
            return unitWeight
        }

        /// You start with a stock of 10kg Kumara
        var currentWeightStock = 10.0
        /// Each Kumara weighs 100g, or 0.1kg. All weighing and weight is in Kilograms.
        var currentCountStock = currentWeightStock * 10

        //// Bagging Variables
        /// You start with 5000 bags in store
        var bagCount = 5000.0
        /// Amount of bags needed for a sale. Max capacity = 50 Kumara at 5kg
        var bagsForSale = bagCount.truncatingRemainder(dividingBy: 5.0)
        /// Each bag costs 0.20¢ for the customer
        var bagSaleCosts = bagsForSale / 5

        //// Data Transfer Variables between Menu Options #2-3
        var boughtWeightStock = 0.0
        var soldWeightStock = 0.0
        var boughtWeight = 0.0
        var soldWeight = 0.0
        var countForSale = 0.0
        var countForDelivery = 0.0

        //// Menu Option #4 & #5
        /// Tracks the amount of kumara weight you’ve bought so far today.
        var dailyBought = 0.0
        /// Tracks the amount of kumara weight you’ve bought so far since the opening of your shop.
        var totalBought = 0.0
        /// Tracks the amount of kumara weight you’ve sold so far today.
        var dailySold = 0.0
        /// Tracks the amount of kumara weight you’ve sold so far since the opening of your shop.
        var totalSold = 0.0

        //// Boundary Check Variables
        /// Max Bin Strength = 50kg, 500 Kumara = 50kg
        let stockMax = 50.0
        /// Prevents bin from holding negative amounts of Kumara
        let stockMin = 0.0
        /// Your theoretical stock after a purchase
        var countAfterPurchase = 00.0
        /// Max weight of kumara you can buy before stock gets full
        var maxWeightBuyable = 00.0
        /// Offsetting variables to accommodate for boundary checking
        var safeThresholdOffset = 1.0

        /// Counts the days
        var dayCount = 1

        //// Low/High Stock Warning Placeholder Variables
        /// Threshold for checking if stock is getting concerningly low
        let stockTooLow = 5.0
        /// Threshold for checking if stock is getting concerningly high
        let stockTooHigh = 45.0
        /// Recommends a weight of kumara to buy in order to escape the Low-Stock Threshold
        var buyRecommend = 00.0
        /// Recommends a weight of kumara to sell in order to escape the High-Stock Threshold
        var sellRecommend = 00.0

        /// Warns of concerningly Low/High Stocks
        func stockThresholdWarning() {
            // Low/High Stock Warning Check
            if currentWeightStock <= stockMin {
                buyRecommend = stockTooLow - currentWeightStock
                print ("Warning! Stock is empty! Please perform a purchase of \(printKg(after: buyRecommend)) of kumara or more.")
            } else if currentWeightStock <= stockTooLow {
                buyRecommend = stockTooLow - currentWeightStock + safeThresholdOffset
                print ("Warning! Stock is low! Please perform a purchase of \(printKg(after: buyRecommend)) kumara or more.")
            } else if currentWeightStock >= stockMax {
                sellRecommend = currentWeightStock - stockTooHigh
                print ("Warning! Stock is full! Please perform a sale of \(printKg(after: sellRecommend)) kumara or more.")
            } else if currentWeightStock >= stockTooHigh {
                sellRecommend = currentWeightStock - stockTooHigh + safeThresholdOffset
                print ("Warning! Stock is high! Please perform a sale of \(printKg(after: sellRecommend)) kumara or more.")
            }
        }

        // Starting Sequence
        print("")
        print("You have started your first day off with \(currentCountStock) kumara at a weight of \(printKg(after: currentWeightStock)) in stock and \(print$(after: walletFunds))...")
        print("")
        mainMenu()

        //// Functions of different Main Menu Options \(printKg(after: )) of
        
        /// Calculates Purchases for Stock.
        /*
        : - Parameters:
        :   - boughtKumara: The amount of kumara the user purchases.
        : - Returns: Stock after purchase.
        */
        func buyWeight(of boughtKumara: Double) -> Double {
            // Boundary & Invalid Check for Purchases
            countAfterPurchase = currentWeightStock + boughtKumara

            if currentWeightStock == stockMax {
                print("Your stock is completely full! Please have a sale before buying more!")
                stockMessage()
            } else if countAfterPurchase > stockMax {
                maxWeightBuyable = stockMax - currentWeightStock
                print(
                    "You can't fit that much kumara in stock! You can only buy \(printKg(after: maxWeightBuyable)) of kumara before you run out of storage!"
                )
                stockMessage()
            } else if boughtKumara == 0 {
                print("You can't buy an absence of kumara!")
                stockMessage()
            } else if boughtKumara < 0 {
                print("You can't buy a negative amount of kumara!")
                stockMessage()
            }
            // else if boughtKumara == Double {
            //     print ("You can't buy portions of kumara! Please enter a whole, positive number of kumara to buy that also wouldn't leave your stock overflowing!")
            //     stockMessage()
            //     mainMenu()
            // } else if boughtKumara != Int > stockMin {
            //     print ("Invalid Input! Please enter a whole, positive number of kumara to buy that also wouldn't leave your stock overflowing!")
            //     stockMessage()
            //     mainMenu()
            // }
            else {
                // Calculates Daily & Total Purchase Weight
                dailyBought += boughtKumara
                totalBought += boughtKumara
                
                // Calculates Stock Addition
                var countForDelivery = currentWeightStock
                boughtWeight = boughtKumara
                var boughtWeightStock = countForDelivery + boughtWeight
                currentWeightStock = boughtWeightStock

                stockThresholdWarning()
                stockMessage()
            }
            return currentWeightStock
        }
        
        /// Calculates Sales for Stock.
        /*
        : - Parameters:
        :   - soldKumara: The amount of kumara the user sells.
        : - Returns: Stock after sale.
        */
        func sellWeight(of soldKumara: Double) -> Double {
            // Boundary & Invalid Checks for Sales
            if currentWeightStock == stockMin {
                print("Your stock is completely empty! Please have a purchase before selling more!")
                stockMessage()
            } else if soldKumara > currentWeightStock {
                print(
                    "You don't have that much kumara to sell! You can only sell \(printKg(after: currentWeightStock)) of kumara until you run out of stock!"
                )
                stockMessage()
            } else if soldKumara == 0 {
                print("You can't sell an absence of kumara!")
                stockMessage()
            } else if soldKumara < 0 {
                print("You can't sell a negative amount of kumara!")
                stockMessage()
            }
            // else if soldKumara == Double {
            //     print ("You can't sell portions of kumara! Please enter a whole, positive number of kumara to sell that also wouldn't leave your stock in debt!")
            //     stockMessage()
            //     mainMenu()
            // } else if soldKumara != Int > stockMin {
            //     print ("Invalid Input! Please enter a whole, positive number of kumara to sell that also wouldn't leave your stock in debt!")
            //     stockMessage()
            //     mainMenu()
            // }
            else {
                // Calculates Daily & Total Sale Weight
                dailySold += soldKumara
                totalSold += soldKumara

                // Calculates Stock Subtraction
                var countForSale = currentWeightStock
                soldWeight = soldKumara
                var soldWeightStock = countForSale - soldWeight
                currentWeightStock = soldWeightStock

                stockThresholdWarning()
                stockMessage()
            }
            return currentWeightStock
        }
        
        /// Reminder of your current stock.
        /*
        : - Returns: Current stock.
        */
        func stockMessage() -> Double {
            
            print("Kumara in stock: \(currentCountStock) Kumara at \(printKg(after: currentWeightStock))")
            mainMenu()
            return currentWeightStock
        }
        
        /// Calculates total purchases.
        /*
        : - Returns: Total purchases.
        */
        func updateBoughtWeight() {
            print("You have bought \(printKg(after: dailyBought)) of kumara so far today.")

            print("You have bought \(printKg(after: totalBought)) of kumara so far since the opening of your shop.")
            mainMenu()
        }

        /// Calculates total sales.
        /*
        : - Returns: Total sales.
        */
        func updateSoldWeight() {
            print("You have sold \(printKg(after: dailySold)) of kumara so far today.")

            print("You have sold \(printKg(after: totalSold)) of kumara so far since the opening of your shop.")
            mainMenu()
        }


        /// Shop reaches closing hours with a summary of work statistics.
        func endDayWithSummary() {
            updateBoughtWeight()
            updateSoldWeight()


            // Variable Reset for next day
            dailyBought = 0
            dailySold = 0
            dayCount += 1


            // Simulation Prompt for next day
            print ("     ")
            print ("=====")
            print ("Day \(dayCount)")
            print ("=====")
            print ("     ")
            mainMenu()
        }
        
        /// Tracks inputs for both buying/selling kumara
        /*
        : - Parameters:
        :   - costingWarning: Warning Dialogue for Invalid Inputs
        : - Returns: Stock after sale.
        */
        func costingInput(with costingWarning: String) -> Double {
            /// Input for Kumara Weight being Bought/Sold
            var costingOption = "00.0"
            /// Input for Kumara Weight being Bought/Sold, converted to Int for calculations.
            var costingNumber = 00.0
            guard costingOption == readLine(), costingNumber == Double(costingOption) else {
                print("\(costingWarning)")
                mainMenu()
                return 0 // ???
            }
            return costingNumber
        }


        /// Shows Various Menu Options
        /*
        : - Returns: Menu option chosen by the user.
        */
        func mainMenu() -> Int {
            print("==== Shop of Kumarativity ====")
            print("1. Buy kumara")
            print("2. Sell kumara")
            print("3. Show current stock")
            print("4. Show total kumara bought")
            print("5. Show total kumara sold")
            print("6. Close shop with Daily Summary")
            print("7. Exit")
            print("Choose an option (1-7):")


            /// A written number from 1-7 that decides which option of the Main Menu to perform
            var menuOption = "00"
            /// A written number from 1-7 that decides which option of the Main Menu to perform, converted to Int for easier List-Scrolling
            var menuNumber = 0
            guard menuOption == readLine(), menuNumber == Int(menuOption) else {
                print("Invalid Input! Please enter a whole number from 1-7.")
                mainMenu()
                return 0 // ???
            }
            if menuNumber == 1 {
                print("Please enter a weight (kg) of kumara you want to buy:")
                buyWeight(of: costingInput(with: "Invalid Input! Please enter a whole, positive number of kumara to buy that also wouldn't leave your stock overflowing!"))
            } else if menuNumber == 2 {
                print("Please enter a weight (kg) of kumara you want to sell:")
                sellWeight(of: costingInput(with: "Invalid Input! Please enter a whole, positive number of kumara to sell that also wouldn't leave your stock in debt!"))
            } else if menuNumber == 3 {
                stockMessage()
            } else if menuNumber == 4 {
                updateBoughtWeight()
            } else if menuNumber == 5 {
                updateSoldWeight()
            } else if menuNumber == 6 {
                endDayWithSummary()
            } else if menuNumber == 7 {
                print("Shutting Interface Down...")
            }
            return menuNumber
        }
    }
}