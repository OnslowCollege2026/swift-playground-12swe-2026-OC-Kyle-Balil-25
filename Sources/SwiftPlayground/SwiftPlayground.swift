// The Swift Programming Language
// https://docs.swift.org/swift-book

@main
struct SwiftPlayground {
    static func main() {
        ////// 23/04/2026-4/05/2026 //////
        ///// Day 22: Summative Assessment #1 - Kumara Stall

        // 00 = Placeholder Number
        
        /* Conversion Functions */
        /// Converts Kumara Weight to Kumara Amount
        /*
        : - Parameters:
        :   - weightStock: Total weight of kumara used during instance
        : - Returns: Amount of kumara used for instance
        */
        func convertCount(from weightStock: Double) -> Double {
            /// Each Kumara weighs 100g, or 0.1kg.
            var currentCountStock = weightStock * 10
            return currentCountStock
        }
        
        /// Converts Kumara Weight to Kumara Cost
        /*
        : - Parameters:
        :   - weightStock: Total weight of kumara used during instance
        : - Returns: Cost of total kumara used for instance
        */
        func convertCosts(from weightStock: Double) -> Double {
            /// Kumara are sold at $3 per Kg.
            kumaraCosts = weightStock * 3
            return kumaraCosts
        }

        /* Measurement-Unit Function */
        /// Prints Units for Weight
        /*
        : - Parameters:
        :   - weight: Total weight of kumara used during instance
        : - Returns: Weight with units
        */
        func printKg(after weight: Double) -> String {
            /// Adds unit “kg” to weight in Dialogue
            var unitWeight = "\(weight)kg"
            return unitWeight
        }

        /// Prints Units for Funds
        /*
        : - Parameters:
        :   - funds: Total funds used during instance
        : - Returns: Funds with units
        */
        func print$(before funds: Double) -> String {
            /// Adds unit “$” to funds in Dialogue
            var unitFunds = "$\(funds)"
            return unitFunds
        }

        /* Parent Item Variables */
        /// Total weight of your kumara stock since the opening of your stall. All measurements are in Kg (Starts at 10kg Kumara in Stock)
        var currentWeightStock = 10.0
        /// Total bags since the opening of your stall. (Starts at 5000 Bags on Rack)
        var bagCount = 5000.0
        /// Total funds since the opening of your stall. (Starts at 50$ in Wallet)
        var walletFunds = 50.0

        /* Miscellaneous Constants for Item Variables */
        /// Boundary Variable that ensures purchases and sales do not perform with kumara amounts of nothing or less
        let noKumara = 0.0

        /* Sale Variables */
        /// Each kumara costs $3.0 for the customer AND the stall owner
        var kumaraCosts = 00.0
        /// Leftovers of Kumara Weight not wholely divisible by 5
        var remainderExact = 00.0
        /// The last bag in a sale that holds Leftovers, if there are any
        var remainderBag = 0.0
        /// Maximum weight a bag can hold. Also used to theoretically allocate kumara in order to calculate related item amounts of complex nature
        let bagMax = 5.0
        /// Placeholder variable for the leftover bag's non-existence
        let remainderNone = 0.0
        /// Placeholder variable for the leftover bag's existence
        let remainderSome = 1.0
        /// Amount of full bags needed for a sale. Excludes the last bag with Leftovers. Max capacity = 50 Kumara at 5kg
        var allFullBags = 00.0
        /// Amount of bags needed for a sale
        var bagsForSale = 00.0
        /// Conversion Multiplier for the costs of bags
        let bagCost = 0.2
        /// Each bag costs 0.20¢ for the customer
        var bagSaleCosts = 00.0
        /// The total costs of the bags and the kumara together for the customer
        var totalSaleCosts = 00.0
        /// Placeholder variable for Sale Dialogue depending on how much kumara is being sold at a time
        var bagCountDialogue = ""
        /// Takes leftover bag into account and adds it to the rest of the full bags to sum up all total bags used in sale
        func addBagCapacities() {
            // An extra bag is needed for Leftovers
            remainderBag = remainderSome
            /// Adds the amount of full bags and the single leftover bag together
            bagsForSale = allFullBags + remainderBag
        }

        /* Data Transfer Variables between Menu Options #1-2 */
        var boughtWeightStock = 0.0
        var soldWeightStock = 0.0
        // Stock gets checked by both the program and the stall owner
        func stockCheckup() {
            stockWarning()
            stockMessage()
        }

        /* Daily & Total Variables */
        /// Tracks the amount of Kumara Weight you’ve bought so far today
        var dailyBoughtWeight = 0.0
        /// Tracks the amount of Kumara Weight you’ve bought so far since the opening of your stall
        var totalBoughtWeight = 0.0
        /// Tracks the amount of Kumara Weight you’ve sold so far today
        var dailySoldWeight = 0.0
        /// Tracks the amount of Kumara Weight you’ve sold so far since the opening of your stall
        var totalSoldWeight = 0.0
        /// Tracks the average weight of a bag and its contents so far today
        var dailyAverageBagWeight = 00.0
        /// Tracks the average weight of a bag and its contents since the opening of your stall
        var totalAverageBagWeight = 00.0
        /// Tracks the average cost of a bag and its contents so far today
        var dailyAverageBagCost = 00.0
        /// Tracks the average cost of a bag and its contents since the opening of your stall
        var totalAverageBagCost = 00.0
        /// Tracks the amount of bags sold so far today
        var dailySoldBags = 0.0
        /// Tracks the amount of bags sold since the opening of your stall
        var totalSoldBags = 0.0
        /// Tracks spending so far today
        var dailySpending = 0.0
        /// Tracks spending since the opening of your stall
        var totalSpending = 0.0
        /// Tracks earnings so far today
        var dailyEarnings = 0.0
        /// Tracks earnings since the opening of your stall
        var totalEarnings = 0.0
        /// Daily Variant Phrase of Dialogue
        let dailyDialogue = "so far today"
        /// Total Variant Phrase of Dialogue
        let totalDialogue = "since the opening of your stall"

        /* Boundary Check Variables */
        /// Max Bin Strength = 50kg, 500 Kumara = 50kg
        let stockMax = 50.0
        /// Prevents bin from holding negative amounts of Kumara
        let stockMin = 0.0
        /// Your theoretical stock after a purchase
        var countAfterPurchase = 00.0
        /// Max weight of kumara you can buy before stock gets full
        var maxWeightBuyable = 00.0

        /* Low/High Stock Warning Operations */
        /// Threshold for checking if stock is getting concerningly low
        let stockTooLow = 5.0
        /// Threshold for checking if stock is getting concerningly high
        let stockTooHigh = 45.0
        /// Suggests a weight of kumara to buy in order to escape the Low-Stock Threshold
        var suggestBuying = 00.0
        /// Suggests a weight of kumara to sell in order to escape the High-Stock Threshold
        var suggestSelling = 00.0

        /// Alters the warning message depending on which IF Block in stockWarning() gets called
        func alterStockWarning(with status: String, and fundsAction: String, and suggestion: Double, and subjectNumber: Double, and subtractor: Double) {
            var suggestion = subjectNumber - subtractor
            print ("Warning! Stock is \(status)! Please perform a \(fundsAction) of more than \(printKg(after: suggestion)).")
        }

        /// Warns of concerningly Low/High Stocks
        func stockWarning() {
            // Low/High Stock Warning Check
            if currentWeightStock <= stockMin {
                alterStockWarning(with: "empty", and: "purchase", and: suggestBuying, and: stockTooLow, and: currentWeightStock)
            } else if currentWeightStock <= stockTooLow {
                alterStockWarning(with: "low", and: "purchase", and: suggestBuying, and: stockTooLow, and: currentWeightStock)
            } else if currentWeightStock >= stockMax {
                alterStockWarning(with: "full", and: "sale", and: suggestSelling, and: currentWeightStock, and: stockTooHigh)
            } else if currentWeightStock >= stockTooHigh {
                alterStockWarning(with: "high", and: "sale", and: suggestSelling, and: currentWeightStock, and: stockTooHigh)
            }
        }

        /* Daily Variables */
        /// Counts the days
        var dayCount = 1
        /// Placeholder variable to reset Daily Summary variables
        let dailyReset = 0.0
        /// Progresses the passing of days
        var nextDay = 1

        // Starting Sequence
        print("")
        print("You have started your first day off with \(convertCount(from: currentWeightStock)) kumara at a weight of \(printKg(after: currentWeightStock)) in stock and \(print$(before: walletFunds))...")
        print("")
        mainMenu(with: dailyDialogue, and: totalDialogue)

        //// Functions of different Main Menu Options \(printKg(after: )) of
        
        /// Calculates Purchases for Stock
        /*
        : - Parameters:
        :   - kumaraWeight: The amount of kumara the user purchases
        : - Returns: Stock after purchase
        */
        func buyWeight() -> Double {
            // Boundary Checks for Purchases
            var buyOption = readLine()!
            var kumaraWeight = Double(buyOption)!
            if currentWeightStock == stockMax { // Checks if stock is full during attempted purchase
                print("Your stock is completely full! Please have a sale before buying more!")
                stockMessage()
            } else if countAfterPurchase > stockMax { // Checks if attempted purchase order would overflow stock
                maxWeightBuyable = stockMax - currentWeightStock
                print("You can't fit that much kumara in stock! You can only buy \(printKg(after: maxWeightBuyable)) of kumara before you run out of storage!")
                stockMessage()
            } else if kumaraWeight == noKumara { // Checks if attempted purchase order contains no kumara
                print("You can't buy an absence of kumara!")
                stockMessage()
            } else if kumaraWeight < noKumara { // Checks if attempted purchase order contains kumara made out of antimatter
                print("You can't buy kumara made out of antimatter!")
                stockMessage()
            } else if countAfterPurchase < stockMax && kumaraWeight > noKumara {
                // Placeholder
                countAfterPurchase = currentWeightStock + kumaraWeight

                // Calculates Stock Addition
                var boughtWeightStock = currentWeightStock + kumaraWeight
                currentWeightStock = boughtWeightStock

                /* Calculations for Purchase Dialogue */
                // Calculates cost of Kumara Weight
                convertCosts(from: kumaraWeight)
                // Subtracts purchase funds from Wallet
                walletFunds -= kumaraCosts

                // Purchase Dialogue
                print ("You bought \(convertCount(from: kumaraWeight)) Kumara at \(printKg(after: kumaraWeight)) costing \(print$(before: kumaraCosts)) for the stall owner.")
                
                // Calculates Daily & Total Weight Purchased
                dailyBoughtWeight += kumaraWeight
                totalBoughtWeight += kumaraWeight 
                // Calculates Daily & Total Spending
                dailySpending += kumaraCosts
                totalSpending += kumaraCosts

                stockCheckup()
            } else {
                print("Invalid Input! Please enter a whole, positive number of kumara to buy that also wouldn't leave your stock overflowing!")
            }
            return currentWeightStock
        }
        
        /// Calculates Sales for Stock
        /*
        : - Parameters:
        :   - kumaraWeight: The amount of kumara the user sells
        : - Returns: Stock after sale
        */
        func sellWeight() -> Double {
            // Boundary Checks for Sales
            var sellOption = readLine()!
            var kumaraWeight = Double(sellOption)!
            if currentWeightStock == stockMin { // Checks if stock is empty during attempted sale
                print("Your stock is completely empty! Please have a purchase before selling more!")
                stockMessage()
            } else if kumaraWeight > currentWeightStock { // Checks if attempted sale order contains kumara made out of antimatter
                print("You don't have that much kumara to sell! You can only sell \(printKg(after: currentWeightStock)) of kumara until you run out of stock!")
                stockMessage()
            } else if kumaraWeight == noKumara { // Checks if attempted sale order contains no kumara
                print("You can't sell an absence of kumara!")
                stockMessage()
            } else if kumaraWeight < noKumara { // Checks if attempted sale order contains kumara made out of antimatter
                print("You can't sell kumara made out of antimatter!")
                stockMessage()
            } else if kumaraWeight < currentWeightStock && kumaraWeight > noKumara {
                // Calculates Stock Subtraction
                var soldWeightStock = currentWeightStock - kumaraWeight
                currentWeightStock = soldWeightStock

                /* Calculations for Sale Dialogue */
                convertCosts(from: kumaraWeight)
                // Calculates leftover kumara
                remainderExact = kumaraWeight.truncatingRemainder(dividingBy: bagMax)
                // Calculates amount of fully filled bags
                allFullBags = (kumaraWeight - remainderExact)/bagMax
                // Alters the Leftovers Dialogue based on how much kumara is being sold at a time
                if kumaraWeight <= bagMax { // Checks if the full sale order fits into a single bag
                    addBagCapacities()
                    // Dialogue states that a single bag was used in a sale
                    bagCountDialogue = "a single bag"
                } else if remainderExact > remainderNone { // Checks if the order of a sale leaves full-bag Leftovers
                    addBagCapacities()
                    // Dialogue states that full-bag Leftovers are present in the sale
                    bagCountDialogue = "\(allFullBags) full bags, with another final bag holding \(convertCount(from: remainderExact)) Kumara at \(printKg(after: remainderExact)) in Leftovers, all total bags"
                } else { // All bags in sale are perfectly full of kumara
                    // Dialogue states that all bags in a sale are perfectly full of kumara
                    bagCountDialogue = "\(allFullBags) full bags"
                }
                // Calculates cost of total bags in sale
                bagSaleCosts = bagsForSale * bagCost
                totalSaleCosts = kumaraCosts + bagSaleCosts
                // Sells bags
                bagCount -= bagsForSale
                // Adds sale revenue to Wallet
                walletFunds += totalSaleCosts

                // Sale Dialogue
                print ("You sold \(convertCount(from: kumaraWeight)) Kumara at \(printKg(after: kumaraWeight)) costing \(print$(before: kumaraCosts)), using \(bagCountDialogue) costing \(print$(before: bagSaleCosts)), all adding up to a total cost of \(print$(before: totalSaleCosts)) for the customer.")
                
                // Calculates Daily & Total Weight Sold
                dailySoldWeight += kumaraWeight
                totalSoldWeight += kumaraWeight
                // Calculates Daily & Total Earnings
                dailyEarnings += totalSaleCosts
                totalEarnings += totalSaleCosts
                // Calculates Daily & Total Bags Sold
                dailySoldBags += bagsForSale
                totalSoldBags += bagsForSale

                dailyAverageBagWeight = dailySoldWeight / dailySoldBags
                totalAverageBagWeight = totalSoldWeight / totalSoldBags
                dailyAverageBagCost = dailyEarnings / dailySoldBags
                totalAverageBagCost = totalEarnings / totalSoldBags

                stockCheckup()
            } else {
                print("Invalid Input! Please enter a whole, positive number of kumara to sell that also wouldn't leave your stock in debt!")
            }
            return currentWeightStock
        }
        
        /// Reminder of your current stock
        func stockMessage() {
            print("Kumara in stock: \(convertCount(from: currentWeightStock)) Kumara at \(printKg(after: currentWeightStock))")
            print("Bags on rack: \(bagCount)")
            print("Wallet: \(print$(before: walletFunds))")
            mainMenu(with: dailyDialogue, and: totalDialogue)
        }
        
        /* Summary Dialogue Alteration Operations (NOT Operations that are part of the 8 Menu Options) */
        /// Alters Weight Summary Dialogue based on the situational context of the functions
        /*
        : - Parameters:
        :   - measurement: What the average is of
        :   - timeStart: The starting timebound of which actionedSubject applies to
        */
        func alterAverageSummary(with measurement: String, and timeDialogue: String, and timedWeight: String) {
            print("Average \(measurement) per bag sold \(timeDialogue): \(timedWeight)")
        }
        /// Alters Weight Summary Dialogue based on the situational context of the functions
        /*
        : - Parameters:
        :   - actionedSubject: A certain funds action of a certain amount of a certain subject
        :   - timeStart: The starting timebound of which actionedSubject applies to
        */
        func alterWeightSummary(with actionedSubject: String, and timeStart: String) {
            print("You have \(actionedSubject) \(timeStart)")
        }
        /* Outlier Operations End */
        
        /// Shows average weight and cost of bags sold 'so far today/since the opening of your stall'
        func viewAverageSummary(with dailyDialogue: String, and totalDialogue: String) {
            alterAverageSummary(with: "weight", and: dailyDialogue, and: printKg(after: dailyAverageBagWeight))
            alterAverageSummary(with: "weight", and: totalDialogue, and: printKg(after: totalAverageBagWeight))
            alterAverageSummary(with: "cost", and: dailyDialogue, and: print$(before: dailyAverageBagCost))
            alterAverageSummary(with: "cost", and: totalDialogue, and: print$(before: totalAverageBagCost))
            mainMenu(with: dailyDialogue, and: totalDialogue)
        }

        /// Calculates total purchases
        /*
        : - Returns: Total purchases
        */
        func viewBoughtSummary(with dailyDialogue: String, and totalDialogue: String) {
            alterWeightSummary(with: "bought \(printKg(after: dailyBoughtWeight)) of kumara", and: dailyDialogue)
            alterWeightSummary(with: "bought \(printKg(after: totalBoughtWeight)) of kumara", and: totalDialogue)
            alterWeightSummary(with: "spent \(print$(before: dailySpending)) on purchases", and: dailyDialogue)
            alterWeightSummary(with: "spent \(print$(before: totalSpending)) on purchases", and: totalDialogue)
        mainMenu(with: dailyDialogue, and: totalDialogue)
        }

        /// Calculates total sales
        /*
        : - Returns: Total sales
        */
        func viewSoldSummary(with dailyDialogue: String, and totalDialogue: String) {
            alterWeightSummary(with: "sold \(printKg(after: dailySoldWeight)) of kumara", and: dailyDialogue)
            alterWeightSummary(with: "sold \(printKg(after: totalSoldWeight)) of kumara", and: totalDialogue)
            alterWeightSummary(with: "earned \(print$(before: dailyEarnings)) on sales", and: dailyDialogue)
            alterWeightSummary(with: "earned \(print$(before: totalEarnings)) on sales", and: totalDialogue)
        mainMenu(with: dailyDialogue, and: totalDialogue)
        }

        /// Stall reaches closing hours with a summary of work statistics.
        func endDayWithSummary() {
            viewBoughtSummary(with: dailyDialogue, and: totalDialogue)
            viewSoldSummary(with: dailyDialogue, and: totalDialogue)

            // Variable Resets for next day
            dailyBoughtWeight = dailyReset
            dailySoldWeight = dailyReset
            dailyAverageBagWeight = dailyReset
            dailyAverageBagCost = dailyReset
            dailySpending = dailyReset
            dailyEarnings = dailyReset
            dailySoldBags = dailyReset
            dayCount += nextDay

            // Simulation Prompt for next day
            print ("     ")
            print ("=====")
            print ("Day \(dayCount)")
            print ("=====")
            print ("     ")
            mainMenu(with: dailyDialogue, and: totalDialogue)
        }
        
        // /// Tracks inputs for both buying/selling kumara
        // /*
        // : - Parameters:
        // :   - costingWarning: Warning Dialogue for Invalid Inputs
        // : - Returns: Stock after sale.
        // */
        // func costingInput(with costingWarning: String) -> Double {
        //     /// Input for Kumara Weight being Bought/Sold
        //     var costingOption = "00.0"
        //     /// Input for Kumara Weight being Bought/Sold, converted to Int for calculations.
        //     var costingNumber = 00.0
        //     guard costingOption == readLine(), costingNumber == Double(costingOption) else {
        //         print("\(costingWarning)")
        //         mainMenu(with: dailyDialogue, and: totalDialogue)
        //         return costingNumber
        //     }
        //     return costingNumber
        // }

        /// Shows Various Menu Options
        /*
        : - Returns: Menu option chosen by the user.
        */
        func mainMenu(with dailyDialogue: String, and totalDialogue: String) -> String {
            print("==== Stall of Kumarativity ====")
            print("1. Buy kumara")
            print("2. Sell kumara")
            print("3. Show current stock")
            print("4. Show average summaries")
            print("4. Show total kumara bought")
            print("5. Show total kumara sold")
            print("6. Close stall with Daily Summary")
            print("7. Exit")
            print("Choose an option (1-8):")

            /// A written number from 1-8 that decides which option of the Main Menu to perform
            var menuOption = readLine()!

            if menuOption == "1" {
                print("Please enter a weight (kg) of kumara you want to buy:")
                // buyWeight(of: costingInput(with: "Invalid Input! Please enter a whole, positive number of kumara to buy that also wouldn't leave your stock overflowing!"))
                var buyPlace = "0"
                buyWeight()
            }
            
            else if menuOption == "2" {
                print("Please enter a weight (kg) of kumara you want to sell:")
                // sellWeight(of: costingInput(with: "Invalid Input! Please enter a whole, positive number of kumara to sell that also wouldn't leave your stock in debt!"))
                var sellPlace = "0"
                sellWeight()
            } else if menuOption == "3" {
                stockMessage()
            } else if menuOption == "4" {
                viewAverageSummary(with: dailyDialogue, and: totalDialogue)
            } else if menuOption == "5" {
                viewBoughtSummary(with: dailyDialogue, and: totalDialogue)
            } else if menuOption == "6" {
                viewSoldSummary(with: dailyDialogue, and: totalDialogue)
            } else if menuOption == "7" {
                endDayWithSummary()
            } else if menuOption == "8" {
                print("Shutting Interface Down...")
            } else {
                print("Invalid Input! Please enter a whole number from 1-8.")
                mainMenu(with: dailyDialogue, and: totalDialogue)
            }
            return menuOption
        }
    }
}