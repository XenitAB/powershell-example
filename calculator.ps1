class Calculator {
    [Decimal]hidden $result = 0

    Calculator() {
        $this.result = 0
    }
    
    Calculator([Decimal]$n) {
        $this.result = $n
    }

    [void]Reset() {
        $this.result = 0
    }
    
    [Decimal]Add([Decimal]$n) {
        $this.result = $this.result + $n
        return $this.result 
    }
    
    [Decimal]Subtract([Decimal]$n) {
        $this.result = $this.result - $n
        return $this.result
    }
    
    [Decimal]Multiply([Decimal]$n) {
        $this.result = $this.result * $n
        return $this.result
    }
    
    [Decimal]Divide([Decimal]$n) {
        $this.result = $this.result / $n
        return $this.result
    }
}