fun main() {
    // Declare variables
    val originalPrice = 100.0 // Example original price
    var discountPercentage = 0.6 // Example discount percentage as a decimal between 0 and 1
    val threshold = 0.5 // Threshold value for discount percentage

    // Check if discount is above the threshold
    if (discountPercentage > threshold) {
        println("Discount percentage is too high. Setting discount to $threshold")
        discountPercentage = threshold
    }

    // Calculate final price after discount
    val discountedPrice = originalPrice * (1 - discountPercentage)

    // Print details
    println("Original Price: $$originalPrice")
    println("Discount Percentage: ${(discountPercentage * 100)}%")
    println("Final Price after Discount: $$discountedPrice")
}
