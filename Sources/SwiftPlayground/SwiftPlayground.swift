// The Swift Programming Language
// https://docs.swift.org/swift-book

@main
struct SwiftPlayground {
    static func main() {
        ////// 23/04/2026-4/05/2026 //////
        ///// Day 22: Summative Assessment #1 - Kumara Shop

        // 00 = Placeholder Number


        //// Constants and Variables

        /// Prints Units for Weight.
        /*
        : - Parameters:
        :   - weight: Total weight of kumara used during instance.
        : - Returns: Weight with units.
        */
        func printKg(after weight: Double) -> String {
            var unitWeight = "\(weight)kg"
            return unitWeight
        }

        /// Prints Units for Cash.
        /*
        : - Parameters:
        :   - funds: Total funds used during instance.
        : - Returns: Funds with units.
        */
        // You start with 50$ in your wallet
        var walletFunds = 50.0
        func print$(after funds: Double) -> String {
            var unitFunds = "\(funds)$"
            return unitFunds
        }

        /// You start with a stock of 10kg Kumara
        var currentWeightStock = 10.0
        /// Each Kumara weighs 100g, or 0.1kg. All weighing and weight is in Kilograms.
        var currentCountStock = currentWeightStock * 10

        //// Data Transfer Variables between Menu Options #2-3
        var boughtWeightStock = 0.0
        var soldWeightStock = 0.0
        var boughtWeight = 0.0
        var soldWeight = 0.0
        var countForSale = 0.0
        var countForDelivery = 0.0

        //// Low/High Stock Warning Placeholder Variables
        let stockTooLow = 5.0
        let stockTooHigh = 45.0
        var buyRecommend = 00.0
        var sellRecommend = 00.0

        //// Menu Option #4 & #5
        var dailyBought = 0.0
        var totalBought = 0.0
        var dailySold = 0.0
        var totalSold = 0.0

        //// Boundary Check Variables
        /// Max Bin Strength = 50kg, 500 Kumara = 50kg
        let stockMax = 50.0
        let stockMin = 0.0
        var countAfterPurchase = 0.0
        var maxWeightBuyable = 0.0
        /// Offsetting variables to accomodate for boundary checking
        var pastWarning = 1.0

        var dayCount = 1

        /// Warns the shopkeeper of concerningly Low/High Stocks
        func warnStockThreshold() {
            // Low/High Stock Warning Check
            if currentWeightStock <= stockMin {
                buyRecommend = stockTooLow - currentWeightStock
                print ("Warning! Stock is empty! Please perform a purchase of \(printKg(after: buyRecommend)) of kumara or more.")
            } else if currentWeightStock <= stockTooLow {
                buyRecommend = stockTooLow - currentWeightStock + pastWarning
                print ("Warning! Stock is low! Please perform a purchase of \(printKg(after: buyRecommend)) kumara or more.")
            } else if currentWeightStock >= stockMax {
                sellRecommend = currentWeightStock - stockTooHigh
                print ("Warning! Stock is full! Please perform a sale of \(printKg(after: sellRecommend)) kumara or more.")
            } else if currentWeightStock >= stockTooHigh {
                sellRecommend = currentWeightStock - stockTooHigh + pastWarning
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
                    "You can't fit that many kumara in stock! You can only buy \(printKg(after: maxWeightBuyable)) of kumara before you run out of storage!"
                )
                stockMessage()
            } else if boughtKumara < 0 {
                print("You can't buy a negative amount of kumara!")
                stockMessage()
            } else if boughtKumara == 0 {
                print("You can't buy an absence of kumara!")
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

                // Low/High Stock Warning Check
                warnStockThreshold()
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
                    "You don't have that many kumara to sell! You can only sell \(printKg(after: currentWeightStock)) of kumara until you run out of stock!"
                )
                stockMessage()
            } else if soldKumara < 0 {
                print("You can't sell a negative amount of kumara!")
                stockMessage()
            } else if soldKumara == 0 {
                print("You can't sell an absence of kumara!")
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

                // Low/High Stock Warning Check
                warnStockThreshold()
                stockMessage()
            }
            return currentWeightStock
        }
        
        /// Reminder of your current stock.
        /*
        : - Returns: Current stock.
        */
        func stockMessage() -> Double {
            
            print("Kumara in stock: \(printKg(after: currentWeightStock))")
            mainMenu()
            return currentWeightStock
        }
        
        /// Calculates total purchases.
        /*
        : - Returns: Total purchases.
        */
        func updateBoughtWeight() -> Double {
            print("You have sold \(dailyBought) kumara so far today.")

            print("You have sold \(totalBought) kumara so far since the opening of your shop.")
            mainMenu()
            return totalBought
        }
        
        /// Calculates total sales.
        /*
        : - Returns: Total sales.
        */
        func updateSoldWeight() -> Double {
            print("You have sold \(dailySold) kumara so far today.")

            print("You have sold \(totalSold) kumara so far since the opening of your shop.")
            mainMenu()
            return totalSold
        }

        /// Shop reaches closing hours with a summary of work statistics.
        func endDayWithSummary() {
            print("You have sold \(dailyBought) kumara so far today.")

            print("You have sold \(totalBought) kumara so far since the opening of your shop.")

            print("You have sold \(dailySold) kumara so far today.")

            print("You have sold \(totalSold) kumara so far since the opening of your shop.")

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

            var menuOption = Int(readLine()!)!
            if menuOption == 1 {
                print("Please enter the amount of kumara you want to buy:")
                buyWeight(of: Double(readLine()!)!)
            } else if menuOption == 2 {
                print("Please enter the amount of kumara you want to sell:")
                sellWeight(of: Double(readLine()!)!)
            } else if menuOption == 3 {
                stockMessage()
            } else if menuOption == 4 {
                updateBoughtWeight()
            } else if menuOption == 5 {
                updateSoldWeight()
            } else if menuOption == 6 {
                endDayWithSummary()
            } else if menuOption == 7 {
                print("Shutting Interface Down...")
            } else {
                print("Invalid Input. Please enter a whole number from 1-7.")
                mainMenu()
            }
            return menuOption
        }
    }
}

////// 26/02/2026 //////
//// Day 9: [Functions] Challenge - Egg Shop (Extension)

////// 27-27/02/2026 //////
//// Day 10: [Functions] Challenge - Egg Shop (Review)

/*
Q1: Why is amount better as a parameter?
A1: Because it makes for more efficient use of inserting in "readLine()!"s in parts of the code.

Q2: Why does sellWeight return an optional?
A2: Because of the exclamation marks in the readLine()! present.

Q3: Which parts of your program became easier to test because of return values?
A3: Absolutely nothing because Return Values are practically useless here, it's just so much more practical for 99% of the code to happen in functions that there's no use for something such as:
let funcTransportVariable = function(parameter: placeholder)
print funcTransportVariable
*/