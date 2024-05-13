fun convertToUppercase(strings: List<String>): List<String> {
    return strings.map { it.toUpperCase() }
}
fun filterNumbersGreaterThan(numbers: List<Int>, threshold: Int): List<Int> {
    return numbers.filter { it > threshold }
}
fun calculateSum(numbers: List<Int>): Int {
    return numbers.reduce { sum, num -> sum + num }
}
fun main() {
    val strings = listOf("hello", "world", "kotlin")
    val uppercaseStrings = convertToUppercase(strings)
    println("Uppercase Strings: $uppercaseStrings")

    val numbers = listOf(10, 25, 5, 30, 15)
    val filteredNumbers = filterNumbersGreaterThan(numbers, 20)
    println("Numbers greater than 20: $filteredNumbers")

    val sum = calculateSum(numbers)
    println("Sum of numbers: $sum")
}
