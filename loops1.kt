fun main() {
    val inputString = getInputString()

    if (inputString.isNotEmpty()) {
        val (minChar, maxChar) = findMinMaxCharacters(inputString)
        println("Minimum Character: $minChar")
        println("Maximum Character: $maxChar")
    } else {
        println("Input string is empty.")
    }
}

fun getInputString(): String {
    println("Enter a string:")
    return readLine().orEmpty()
}

fun findMinMaxCharacters(input: String): Pair<Char, Char> {
    var minChar = input[0]
    var maxChar = input[0]

    for (char in input) {
        if (char < minChar) {
            minChar = char
        }
        if (char > maxChar) {
            maxChar = char
        }
    }

    return Pair(minChar, maxChar)
}
