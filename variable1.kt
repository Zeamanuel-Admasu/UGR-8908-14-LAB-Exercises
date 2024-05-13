import java.util.Scanner

fun main() {
    val scanner = Scanner(System.`in`)
    
    // Input first number
    print("Enter the first number: ")
    val num1 = scanner.nextDouble()

    // Input second number
    print("Enter the second number: ")
    val num2 = scanner.nextDouble()

    // Input operation
    print("Enter the operation (+, -, *, /): ")
    val operation = scanner.next()

    // Perform the operation based on user input
    val result = when(operation) {
        "+" -> num1 + num2
        "-" -> num1 - num2
        "*" -> num1 * num2
        "/" -> {
            if (num2 != 0.0) {
                num1 / num2
            } else {
                println("Error: Division by zero!")
                return
            }
        }
        else -> {
            println("Error: Invalid operation entered!")
            return
        }
    }

    // Print the result
    println("Result: $result")
}
