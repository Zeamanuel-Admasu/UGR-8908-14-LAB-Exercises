import java.util.Scanner

fun main() {
    val scanner = Scanner(System.`in`)

    // Input numeric grade
    print("Enter the numeric grade (0-100): ")
    val numericGrade = scanner.nextInt()

    // Assign letter grade based on numeric grade
    val letterGrade = when {
        numericGrade >= 90 && numericGrade <= 100 -> "A"
        numericGrade >= 80 && numericGrade <= 89 -> "B"
        numericGrade >= 70 && numericGrade <= 79 -> "C"
        numericGrade >= 60 && numericGrade <= 69 -> "D"
        numericGrade < 60 && numericGrade >= 0 -> "F"
        else -> {
            println("Invalid input. Grade should be between 0 and 100.")
            return
        }
    }

    // Print the letter grade
    println("Letter grade: $letterGrade")
}
