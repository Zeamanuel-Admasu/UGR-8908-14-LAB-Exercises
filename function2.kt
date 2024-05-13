fun findMax(numbers: List<Int>): Int? {
    if (numbers.isEmpty()) return null 

    var max = numbers[0] 

    for (num in numbers) {
        if (num > max) {
            max = num 
        }
    }

    return max
}
fun filterEvenNumbers(numbers: List<Int>): List<Int> {
    return numbers.filter { it % 2 == 0 }
}
fun calculateAverage(numbers: List<Double>): Double? {
    if (numbers.isEmpty()) return null 

    val sum = numbers.sum() 
    val average = sum / numbers.size.toDouble() 

    return average
}
fun main() {
    val numbers = listOf(1, 5, 3, 8, 10, 6)
    val doubles = listOf(1.5, 2.0, 3.5, 4.0, 2.5)

    val maxNumber = findMax(numbers)
    println("Maximum number: $maxNumber")

    val evenNumbers = filterEvenNumbers(numbers)
    println("Even numbers: $evenNumbers")

    val average = calculateAverage(doubles)
    println("Average: $average")
}
