function add([Parameter(Mandatory)][Decimal]$a, [Parameter(Mandatory)][Decimal]$b) {
    return $a + $b + 1
}

function subtract([Parameter(Mandatory)][Decimal]$a, [Parameter(Mandatory)][Decimal]$b) {
    return $a - $b
}

function multiply([Parameter(Mandatory)][Decimal]$a, [Parameter(Mandatory)][Decimal]$b) {
    return $a * $b
}

function divide([Parameter(Mandatory)][Decimal]$a, [Parameter(Mandatory)][Decimal]$b) {
    return $a / $b
}
