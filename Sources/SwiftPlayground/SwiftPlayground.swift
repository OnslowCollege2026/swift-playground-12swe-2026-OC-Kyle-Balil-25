// The Swift Programming Language
// https://docs.swift.org/swift-book

@main
struct SwiftPlayground {
    static func main() {
        ////// 23/04/2026-4/05/2026 //////
        ///// Day 22: Summative Assessment #1 - Kumara Stall

        // 00 = Placeholder Number
        // .00 = Variables Starts From 0, only increases unless undergoing a Numerical Reset
        
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
        
        /// Rounds variables meant to be implied as whole
        /*
        : - Parameters:
        :   - impliedDivisibility: Shouldn't be divisible, at least in the program
        : - Returns: Cost of total kumara used for instance
        */
        func roundNumber(of impliedDivisibility: Double) -> Int {
            /// Kumara are sold at $3 per Kg.
            var indivisible = Int(impliedDivisibility.rounded())
            return indivisible
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

        /* Boundary Check Variables */
        /// Max Bin Strength = 50kg, 500 Kumara = 50kg
        let stockMax = 50.0
        /// Prevents bin from holding Kumara made out of antimatter
        let stockMin = 0.0
        /// Your theoretical stock after a purchase
        var countAfterPurchase = 00.0
        /// Max weight of kumara you can buy before stock gets full
        var maxWeightBuyable = 00.0
        /// Boundary Variable that ensures purchases and sales do not perform with kumara amounts of nothing or less
        let noKumara = 0.0
        /// Your theoretical funds after a purchase
        var fundsAfterPurchase = 00.0
        /// Minimum amount of funds your wallet can hold
        let emptyFunds = 0.0
        /// Maximum amount of funds your wallet can hold
        let fullFunds = 1000000.0

        /* Sale Variables */
        /// Each kumara costs $3.0 for the customer AND the stall owner
        var kumaraCosts = 00.0
        /// Leftovers of Kumara Weight not wholely divisible by 5
        var remainderExact = 00.0
        /// The last bag in a sale holding possible Leftovers
        let remainderBag = 1.0
        /// Maximum weight a bag can hold. Also used to theoretically allocate kumara in order to calculate related item amounts of complex nature
        var bagMax = 5.0
        /// The single bag used for sale orders of 5.0kg or less
        var singleBag = 1.0
        /// Boundary Variable for checking if there are leftovers present
        let remainderNone = 0.0
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
        /// Placeholder variable inside Sale Dialogue depending on how much kumara is being sold at a time
        var bagCountDialogue = ""
        /// Placeholder variable for summarising each sale
        var saleDialogue = ""

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
        var dailyBoughtWeight = 0.00
        /// Tracks the amount of Kumara Weight you’ve bought so far since the opening of your stall
        var totalBoughtWeight = 0.00
        /// Tracks the amount of Kumara Weight you’ve sold so far today
        var dailySoldWeight = 0.00
        /// Tracks the amount of Kumara Weight you’ve sold so far since the opening of your stall
        var totalSoldWeight = 0.00
        /// Tracks the average weight of a bag and its contents so far today
        var dailyAverageBagWeight = 00.0
        /// Tracks the average weight of a bag and its contents since the opening of your stall
        var totalAverageBagWeight = 00.0
        /// Tracks the average cost of a bag and its contents so far today
        var dailyAverageBagCost = 00.0
        /// Tracks the average cost of a bag and its contents since the opening of your stall
        var totalAverageBagCost = 00.0
        /// Tracks the amount of bags sold so far today
        var dailySoldBags = 0.00
        /// Tracks the amount of bags sold since the opening of your stall
        var totalSoldBags = 0.00
        /// Tracks spending so far today
        var dailySpending = 0.00
        /// Tracks spending since the opening of your stall
        var totalSpending = 0.00
        /// Tracks earnings so far today
        var dailyEarnings = 0.00
        /// Tracks earnings since the opening of your stall
        var totalEarnings = 0.00
        /// Daily Variant Phrase of Dialogue
        let dailyDialogue = "so far today"
        /// Total Variant Phrase of Dialogue
        let totalDialogue = "since the opening of your stall"

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
        print("You have started your first day off with \(roundNumber(of: convertCount(from: currentWeightStock))) kumara at a weight of \(printKg(after: currentWeightStock)) in stock and \(print$(before: walletFunds))...")
        print("")
        showMainMenu(with: dailyDialogue, and: totalDialogue)

        //// Functions of different Main Menu Options \(printKg(after: )) of
        
        /// Calculates Purchases for Stock
        /*
        : - Parameters:
        :   - boughtWeight: The amount of kumara the user purchases
        : - Returns: Stock after purchase
        */
        func buyWeight() -> Double { // Menu Option #1
            /// Weight of kumara you attempt to purchase
            var boughtWeight = 00.0
            // Checks if the attempted purchase order is countable
            if var buyOption = readLine(), var boughtNumber = Double(buyOption) {
                boughtWeight = boughtNumber
            } else { // The attempted purchase order wasn't even countable
                print("Invalid Input! Please enter a whole, positive number of kumara to buy that also wouldn't leave your stock overflowing!")
                stockMessage()
                showMainMenu(with: dailyDialogue, and: totalDialogue)
                return currentWeightStock
            }
            
            /// Adds your newly bought stock to your current stock to alter a boundary variable in a later else if block
            countAfterPurchase = currentWeightStock + boughtWeight
            /// Subtracts your newly spent funds from your current budget to alter a boundary variable in a later else if block
            fundsAfterPurchase = walletFunds - convertCosts(from: boughtWeight)

            // Boundary Checks for Purchases
            if currentWeightStock == stockMax { // Checks if stock is full during attempted purchase
                print("Your stock is completely full! Please have a sale before buying more!")
                stockMessage()
            } else if countAfterPurchase > stockMax { // Checks if attempted purchase order would overflow stock
                maxWeightBuyable = stockMax - currentWeightStock
                print("You can't fit that much kumara in stock! You can only buy \(printKg(after: maxWeightBuyable)) of kumara before you run out of storage!")
                stockMessage()
            } else if boughtWeight == noKumara { // Checks if attempted purchase order contains no kumara
                print("You can't buy an absence of kumara!")
                stockMessage()
            } else if boughtWeight < noKumara { // Checks if attempted purchase order contains kumara made out of antimatter
                print("You can't buy kumara made out of antimatter!")
                stockMessage()
            } else if fundsAfterPurchase < emptyFunds { // Checks if attempted purchase order leaves you in financial debt
                print("You would be in debt if this purchase went through!")
                stockMessage()
            } else { // Attempted purchase order is physically possible and sensible
                // Calculates Stock Addition
                var boughtWeightStock = currentWeightStock + boughtWeight
                currentWeightStock = boughtWeightStock

                /* Calculations for Purchase Dialogue */
                // Calculates cost of Kumara Weight
                convertCosts(from: boughtWeight)
                // Subtracts purchase funds from Wallet
                walletFunds -= kumaraCosts

                // Purchase Dialogue
                print ("You bought \(roundNumber(of: convertCount(from: boughtWeight))) Kumara at \(printKg(after: boughtWeight)) costing \(print$(before: kumaraCosts)) for the stall owner.")
                
                // Calculates Daily & Total Weight Purchased
                dailyBoughtWeight += boughtWeight
                totalBoughtWeight += boughtWeight 
                // Calculates Daily & Total Spending
                dailySpending += kumaraCosts
                totalSpending += kumaraCosts

                stockCheckup()
            }
            return currentWeightStock
        }
        
        /// Calculates Sales for Stock
        /*
        : - Parameters:
        :   - soldWeight: The amount of kumara the user sells
        : - Returns: Stock after sale
        */
        func sellWeight() -> Double { // Menu Option #2
            /// Weight of kumara you attempt to sell
            var soldWeight = 00.0
            // Checks if the attempted sale order is countable
            if var sellOption = readLine(), var sellNumber = Double(sellOption) {
                soldWeight = sellNumber
            } else { // The attempted sale order wasn't even countable
                print("Invalid Input! Please enter a whole, positive number of kumara to buy that also wouldn't leave your stock in debt!")
                stockMessage()
                showMainMenu(with: dailyDialogue, and: totalDialogue)
                return currentWeightStock
            }
            
            /// Adds your newly earned funds to your current budget to alter a boundary variable in a later else if block
            fundsAfterPurchase = walletFunds + convertCosts(from: soldWeight)
            
            // Boundary Checks for Sales
            if currentWeightStock == stockMin { // Checks if stock is empty during attempted sale
                print("Your stock is completely empty! Please have a purchase before selling more!")
                stockMessage()
            } else if soldWeight > currentWeightStock { // Checks if attempted sale order contains kumara made out of antimatter
                print("You don't have that much kumara to sell! You can only sell \(printKg(after: currentWeightStock)) of kumara until you run out of stock!")
                stockMessage()
            } else if soldWeight == noKumara { // Checks if attempted sale order contains no kumara
                print("You can't sell an absence of kumara!")
                stockMessage()
            } else if soldWeight < noKumara { // Checks if attempted sale order contains kumara made out of antimatter
                print("You can't sell kumara made out of antimatter!")
                stockMessage()
            } else if fundsAfterPurchase > fullFunds { // Checks if attempted sale order leaves your wallet overflowing
                print("Your wallet would be overflowing if this sale went through!")
                stockMessage()
            } else { // Attempted sale order is physically possible and sensible
                // Calculates Stock Subtraction
                var soldWeightStock = currentWeightStock - soldWeight
                currentWeightStock = soldWeightStock

                /* Calculations for Sale Dialogue */
                convertCosts(from: soldWeight)
                // Calculates leftover kumara
                remainderExact = soldWeight.truncatingRemainder(dividingBy: bagMax)
                // Calculates amount of fully filled bags
                allFullBags = (soldWeight - remainderExact)/bagMax
                // Alters the Leftovers Dialogue based on how much kumara is being sold at a time
                if soldWeight <= bagMax { // Checks if the full sale order fits into a single bag
                    // The sale order only requires a single bag
                    bagsForSale = singleBag
                    // Dialogue states that a single bag was used in a sale
                    bagCountDialogue = "a single bag"
                } else if remainderExact > remainderNone { // Checks if the order of a sale leaves full-bag leftovers
                    /// Adds the amount of full bags and the single leftover bag together
                    bagsForSale = allFullBags + remainderBag
                    // Dialogue states that full-bag leftovers are present in the sale
                    bagCountDialogue = "\(roundNumber(of: allFullBags)) full bags, with another final bag holding \(roundNumber(of: convertCount(from: remainderExact))) Kumara at \(printKg(after: remainderExact)) in leftovers, all total bags"
                } else { // All bags in sale are perfectly full of kumara
                    // Dialogue states that all bags in a sale are perfectly full of kumara
                    bagCountDialogue = "\(roundNumber(of: allFullBags)) full bags"
                }
                // Calculates cost of total bags in sale
                bagSaleCosts = bagsForSale * bagCost
                totalSaleCosts = kumaraCosts + bagSaleCosts
                // Sells bags
                bagCount -= bagsForSale
                // Adds sale revenue to Wallet
                walletFunds += totalSaleCosts

                // Sale Dialogue
                saleDialogue = "You sold \(roundNumber(of: convertCount(from: soldWeight))) Kumara at \(printKg(after: soldWeight)) costing \(print$(before: kumaraCosts)), using \(bagCountDialogue) costing \(print$(before: bagSaleCosts)), all adding up to a total cost of \(print$(before: totalSaleCosts)) for the customer."
                print (saleDialogue)

                // Adds a new sale to history
                lastFiveSales.append(saleDialogue)
                // Discards oldest sale to make room for a new one if history is full
                if lastFiveSales.count > 5 {
                    lastFiveSales.removeFirst()
                }
                
                // Calculates Daily & Total Weight Sold
                dailySoldWeight += soldWeight
                totalSoldWeight += soldWeight
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
            }
            return currentWeightStock
        }
        
        /// Reminder of your current stock
        func stockMessage() { // Menu Option #3
            print("Kumara in stock: \(roundNumber(of: convertCount(from: currentWeightStock))) Kumara at \(printKg(after: currentWeightStock))")
            print("Bags on rack: \(roundNumber(of: bagCount))")
            print("Wallet: \(print$(before: walletFunds))")
            showMainMenu(with: dailyDialogue, and: totalDialogue)
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
        func viewAverageSummary(with dailyDialogue: String, and totalDialogue: String) { // Menu Option #4
            alterAverageSummary(with: "weight", and: dailyDialogue, and: printKg(after: dailyAverageBagWeight))
            alterAverageSummary(with: "weight", and: totalDialogue, and: printKg(after: totalAverageBagWeight))
            alterAverageSummary(with: "cost", and: dailyDialogue, and: print$(before: dailyAverageBagCost))
            alterAverageSummary(with: "cost", and: totalDialogue, and: print$(before: totalAverageBagCost))
            showMainMenu(with: dailyDialogue, and: totalDialogue)
        }

        /// Calculates total purchases
        /*
        : - Returns: Total purchases
        */
        func viewBoughtSummary(with dailyDialogue: String, and totalDialogue: String) { // Menu Option #5
            alterWeightSummary(with: "bought \(printKg(after: dailyBoughtWeight)) of kumara", and: dailyDialogue)
            alterWeightSummary(with: "bought \(printKg(after: totalBoughtWeight)) of kumara", and: totalDialogue)
            alterWeightSummary(with: "spent \(print$(before: dailySpending)) on purchases", and: dailyDialogue)
            alterWeightSummary(with: "spent \(print$(before: totalSpending)) on purchases", and: totalDialogue)
        showMainMenu(with: dailyDialogue, and: totalDialogue)
        }

        /// Calculates total sales
        /*
        : - Returns: Total sales
        */
        func viewSoldSummary(with dailyDialogue: String, and totalDialogue: String) { // Menu Option #6
            alterWeightSummary(with: "sold \(printKg(after: dailySoldWeight)) of kumara", and: dailyDialogue)
            alterWeightSummary(with: "sold \(printKg(after: totalSoldWeight)) of kumara", and: totalDialogue)
            alterWeightSummary(with: "earned \(print$(before: dailyEarnings)) on sales", and: dailyDialogue)
            alterWeightSummary(with: "earned \(print$(before: totalEarnings)) on sales", and: totalDialogue)
        showMainMenu(with: dailyDialogue, and: totalDialogue)
        }

        /// Tracks and stores the last 5 successful sales
        var lastFiveSales: [String] = []
        /// Lists the last 5 successful sales
        func viewSaleHistory(using lastFiveSales: [String]) { // Menu Option #7
            /// Numerically Lists Sales
            var saleNumber = 0
            /// Indicates which direction the time of sales progresses in
            var saleTime = ""
            for sale in lastFiveSales {
                // Progresses through the list of sales
                saleNumber += 1
                // Ensures time indicator is only used at each end of the list
                if saleNumber == 1 {
                    saleTime = "(Oldest)"
                } else if saleNumber == 5 {
                    saleTime = "(Newest)"
                } else {
                    saleTime = ""
                }

                // Prints Sale Summary
                print ("Sale #\(saleNumber) \(saleTime)")
                print ("\(sale)")
                print ("")
            }
        }

        /// Stall reaches closing hours with a summary of work statistics.
        func endDayWithSummary() { // Menu Option #8
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
            showMainMenu(with: dailyDialogue, and: totalDialogue)
        }

        func showMainMenu(with dailyDialogue: String, and totalDialogue: String) -> String {
            print("==== Stall of Kumarativity ====")
            print("1. Buy kumara")
            print("2. Sell kumara")
            print("3. Show current stock")
            print("4. Show average summaries")
            print("5. Show purchase summaries")
            print("6. Show sale summaries")
            print("7. Show sale history")
            print("8. Close stall for today with Daily Summary")
            print("9. Exit")
            print("Choose an option (1-9):")

            /// A written number from 1-9 that decides which option of the Main Menu to perform
            var menuOption = readLine()!

            if menuOption == "1" {
                print("Please enter a weight (kg) of kumara you want to buy:")
                var buyPlace = "0"
                buyWeight()
            } else if menuOption == "2" {
                print("Please enter a weight (kg) of kumara you want to sell:")
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
                viewSaleHistory(using: lastFiveSales)
            } else if menuOption == "8" {
                endDayWithSummary()
            } else if menuOption == "9" {
                print("Shutting Interface Down...")
            } else {
                print("Invalid Input! Please enter a whole number from 1-9.")
                showMainMenu(with: dailyDialogue, and: totalDialogue)
            }
            return menuOption
        }
    }
}