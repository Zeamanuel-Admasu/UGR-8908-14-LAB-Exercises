fun analyzeString(inputString: String): Triple<Int, Int, Int> {
    var wordCount = 0
    var uppercaseCount = 0
    var vowelCount = 0

   
    val words = inputString.split("\\s+".toRegex())

    wordCount = words.size
    inputString.forEach { char ->
        if (char.isUpperCase()) {
            uppercaseCount++
        }
        if (char.toLowerCase() in listOf('a', 'e', 'i', 'o', 'u')) {
            vowelCount++
        }
    }

    return Triple(wordCount, uppercaseCount, vowelCount)
}

fun main() {
    val inputString = "Hello World! This is a Test String for Analysis."

    val (wordCount, uppercaseCount, vowelCount) = analyzeString(inputString)

    println("Input String: $inputString")
    println("Number of Words: $wordCount")
    println("Number of Uppercase Letters: $uppercaseCount")
    println("Number of Vowels: $vowelCount")
}
