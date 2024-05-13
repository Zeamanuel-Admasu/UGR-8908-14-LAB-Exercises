fun main() {
    val distanceValue = 10.0 
    val originalUnit = "kilometers" 
    val targetUnit = "miles"

    val convertedValue = convertDistance(distanceValue, originalUnit, targetUnit)
    
    if (convertedValue != null) {
        println("$distanceValue $originalUnit is equal to $convertedValue $targetUnit")
    } else {
        println("Invalid units for conversion.")
    }
}

fun convertDistance(value: Double, fromUnit: String, toUnit: String): Double? {
    return when {
        fromUnit.equals("kilometers", ignoreCase = true) && toUnit.equals("miles", ignoreCase = true) -> value * 0.621371
        fromUnit.equals("miles", ignoreCase = true) && toUnit.equals("kilometers", ignoreCase = true) -> value * 1.60934
        else -> null 
    }
}
