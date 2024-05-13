import kotlin.random.Random

fun main() {
    val passwordLength = 12 
    val password = generateRandomPassword(passwordLength)
    println("Generated Password: $password")
}

fun generateRandomPassword(length: Int): String {
    val charPool: List<Char> = ('a'..'z') + ('A'..'Z') + ('0'..'9') + listOf('!', '@', '#', '$', '%', '^', '&', '*', '_', '-')
    val random = Random
    var password = ""
    
    repeat(length) {
        val randomChar = charPool[random.nextInt(0, charPool.size)]
        password += randomChar
    }

    return password
}
