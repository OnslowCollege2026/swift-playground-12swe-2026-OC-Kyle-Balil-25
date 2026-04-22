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
        ////// 23/04/2026-4/05/2026 //////
        ///// Day 22: Summative Assessment #1 - Kumara Shop

        // 00 = Placeholder Number

        /// You start with a stock of 100 Kumara
        var currentCountStock = 100
        /// Each Kumara weighs 100g, or 0.1kg. All weighing and weight is in Kilograms.
        var currentWeightStock = "\(currentCountStock / 10)kg"
        /// You start with 50$ in your wallet
        var walletFunds = 50
        func print$(with funds: Int) {

            // return "\(funds)$"
        }

        //// Data Transfer Variables between Menu Options #2-3
        var boughtCountStock = 0
        var soldCountStock = 0
        var boughtCount = 0
        var soldCount = 0
        var countForSale = 0
        var countForDelivery = 0

        //// Low/High Stock Warning Placeholder Variables
        let stockTooLow = 50
        let stockTooHigh = 450
        var buyRecommend = 00
        var sellRecommend = 00

        //// Menu Option #4 & #5
        var dailyBought = 0
        var totalBought = 0
        var dailySold = 0
        var totalSold = 0

        //// Boundary Check Variables
        /// Max Bin Strength = 50kg, 500 Kumara = 50kg
        let stockMax = 500
        let stockMin = 0
        var countAfterPurchase = 0
        var maxCountBuyable = 0
        /// Offsetting variables to accomodate for boundary checking
        var pastWarning = 1

        var dayCount = 1

        // Starting Sequence
        print("")
        print("You have started your first day off with 100 kumara at a weight of in stock and 50$...")
        print("")
        mainMenu()

        /// Functions of different Main Menu Options
        
        // Calculates Purchases for Stock.
        /*
        : - Parameters:
        :   - buyAmount: The amount of kumara the user purchases.
        : - Returns: Stock after purchase.
        */
        func buyKumara(buyAmount: Int) -> Int {
            // Boundary & Invalid Check for Purchases
            countAfterPurchase = currentCountStock + buyAmount

            if currentCountStock == stockMax {
                print("Your stock is completely full! Please have a sale before buying more!")
                print("Kumara in stock: \(currentCountStock)")
            } else if countAfterPurchase > stockMax {
                maxCountBuyable = stockMax - currentCountStock
                checkPlural(of: maxCountBuyable)
                print(
                    "You can't fit that many kumara in stock! You can only buy \(maxCountBuyable) more egg\(pluralS) before you run out of storage!"
                )
                print("Kumara in stock: \(currentCountStock)")
            } else if buyAmount < 0 {
                print("You can't buy a negative amount of kumara!")
                print("Kumara in stock: \(currentCountStock)")
            }
            /// Why doesn't this Invalid Input Checker work? :(
            //  else if buyAmount != Int > stockMin {
            //     print ("Invalid Input! Please enter a whole, positive number of kumara to buy that also wouldn't overflow your stock!")
            //     print("Kumara in stock: \(currentCountStock)")
            //     mainMenu()
            // }
            else {
                // Calculates Daily & Total Purchase Count
                dailyBought += buyAmount
                totalBought += buyAmount
                
                // Calculates Stock Addition
                var countForDelivery = currentCountStock
                boughtCount = buyAmount
                var boughtCountStock = countForDelivery + boughtCount
                currentCountStock = boughtCountStock

                // Low/High Stock Warning Check
                if currentCountStock <= stockMin {
                    buyRecommend = stockTooLow - currentCountStock
                    checkPlural(of: buyRecommend)
                    print ("Warning! Stock is empty! Please perform a purchase of \(buyRecommend) egg\(pluralS) or more.")
                } else if currentCountStock <= stockTooLow {
                    buyRecommend = stockTooLow - currentCountStock + pastWarning
                    checkPlural(of: buyRecommend)
                    print ("Warning! Stock is low! Please perform a purchase of \(buyRecommend) egg\(pluralS) or more.")
                } else if currentCountStock >= stockMax {
                    sellRecommend = currentCountStock - stockTooHigh
                    checkPlural(of: sellRecommend)
                    print ("Warning! Stock is full! Please perform a sale of \(sellRecommend) egg\(pluralS) or more.")
                } else if currentCountStock >= stockTooHigh {
                    sellRecommend = currentCountStock - stockTooHigh + pastWarning
                    checkPlural(of: sellRecommend)
                    print ("Warning! Stock is high! Please perform a sale of \(sellRecommend) egg\(pluralS) or more.")
                }
                print("Kumara in stock: \(currentCountStock)")
            }
            mainMenu()
            return currentCountStock
        }
        
        // Calculates Sales for Stock.
        /*
        : - Parameters:
        :   - sellAmount: The amount of kumara the user sells.
        : - Returns: Stock after sale.
        */
        func sellKumara(sellAmount: Int) -> Int {
            // Boundary & Invalid Checks for Sales
            if currentCountStock == stockMin {
                print("Your stock is completely empty! Please have a purchase before selling more!")
                print("Kumara in stock: \(currentCountStock)")
            } else if sellAmount > currentCountStock {
                checkPlural(of: currentCountStock)
                print(
                    "You don't have that many kumara to sell! You can only sell \(currentCountStock) more egg\(pluralS) until you run out of stock!"
                )
                print("Kumara in stock: \(currentCountStock)")
            } else if sellAmount < 0 {
                print("You can't sell a negative amount of kumara!")
                print("Kumara in stock: \(currentCountStock)")
            }
            /// Why doesn't this Invalid Input Checker work? :(
            //  else if sellAmount != Int > stockMin {
            //     print ("Invalid Input! Please enter a whole, positive number of kumara to sell that also wouldn't leave your stock in debt!")
            //     print("Kumara in stock: \(currentCountStock)")
            //     mainMenu()
            // }
            else {
                // Calculates Daily & Total Sale Count
                dailySold += sellAmount
                totalSold += sellAmount

                // Calculates Stock Subtraction
                var countForSale = currentCountStock
                soldCount = sellAmount
                var soldCountStock = countForSale - soldCount
                currentCountStock = soldCountStock

                // Low/High Stock Warning Check
                if currentCountStock <= stockMin {
                    buyRecommend = stockTooLow - currentCountStock
                    checkPlural(of: buyRecommend)
                    print ("Warning! Stock is empty! Please perform a purchase of \(buyRecommend) egg\(pluralS) or more.")
                } else if currentCountStock <= stockTooLow {
                    buyRecommend = stockTooLow - currentCountStock + pastWarning
                    checkPlural(of: buyRecommend)
                    print ("Warning! Stock is low! Please perform a purchase of \(buyRecommend) egg\(pluralS) or more.")
                } else if currentCountStock >= stockMax {
                    sellRecommend = currentCountStock - stockTooHigh
                    checkPlural(of: sellRecommend)
                    print ("Warning! Stock is full! Please perform a sale of \(sellRecommend) egg\(pluralS) or more.")
                } else if currentCountStock >= stockTooHigh {
                    sellRecommend = currentCountStock - stockTooHigh + pastWarning
                    checkPlural(of: sellRecommend)
                    print ("Warning! Stock is high! Please perform a sale of \(sellRecommend) egg\(pluralS) or more.")
                }
                print("Kumara in stock: \(currentCountStock)")
            }
            mainMenu()
            return currentCountStock
        }
        
        // Reminder of your current stock.
        /*
        : - Returns: Current stock.
        */
        func stockMessage() -> Int {
            checkPlural(of: currentCountStock)
            
            print("You currently have \(currentCountStock) egg\(pluralS) in stock.")
            mainMenu()
            return currentCountStock
        }
        
        // Calculates total purchases.
        /*
        : - Returns: Total purchases.
        */
        func updateBoughtCount() -> Int {
            checkPlural(of: dailyBought)
            print("You have sold \(dailyBought) egg\(pluralS) so far today.")

            checkPlural(of: totalBought)
            print("You have sold \(totalBought) egg\(pluralS) so far since the opening of your shop.")
            mainMenu()
            return totalBought
        }
        
        // Calculates total sales.
        /*
        : - Returns: Total sales.
        */
        func updateSoldCount() -> Int {
            checkPlural(of: dailySold)
            print("You have sold \(dailySold) egg\(pluralS) so far today.")

            checkPlural(of: totalSold)
            print("You have sold \(totalSold) egg\(pluralS) so far since the opening of your shop.")
            mainMenu()
            return totalSold
        }

        func endWithSummary() {
            checkPlural(of: dailyBought)
            print("You have sold \(dailyBought) egg\(pluralS) so far today.")

            checkPlural(of: totalBought)
            print("You have sold \(totalBought) egg\(pluralS) so far since the opening of your shop.")

            checkPlural(of: dailySold)
            print("You have sold \(dailySold) egg\(pluralS) so far today.")

            checkPlural(of: totalSold)
            print("You have sold \(totalSold) egg\(pluralS) so far since the opening of your shop.")

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
        
        // Root of all other functions.
        /*
        : - Returns: Menu option chosen by the user.
        */
        func mainMenu() -> Int {
            print("==== Shop of Kabseggtivity ====")
            print("1. Buy kumara")
            print("2. Sell kumara")
            print("3. Show current stock")
            print("4. Show total kumara bought")
            print("5. Show total kumara sold")
            print("6. End day with Daily Summary")
            print("7. Exit")
            print("Choose an option (1-7):")

            var menuOption = Int(readLine()!)!
            if menuOption == 1 {
                print("Please enter the amount of kumara you want to buy:")
                buyKumara(buyAmount: Int(readLine()!)!)
            } else if menuOption == 2 {
                print("Please enter the amount of kumara you want to sell:")
                sellKumara(sellAmount: Int(readLine()!)!)
            } else if menuOption == 3 {
                stockMessage()
            } else if menuOption == 4 {
                updateBoughtCount()
            } else if menuOption == 5 {
                updateSoldCount()
            } else if menuOption == 6 {
                endWithSummary()
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

Q2: Why does sellKumara return an optional?
A2: Because of the exclamation marks in the readLine()! present.

Q3: Which parts of your program became easier to test because of return values?
A3: Absolutely nothing because Return Values are practically useless here, it's just so much more practical for 99% of the code to happen in functions that there's no use for something such as:
let funcTransportVariable = function(parameter: placeholder)
print funcTransportVariable
*/