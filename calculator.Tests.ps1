BeforeAll {
    . $PSCommandPath.Replace('.Tests.ps1', '.ps1')
}

Describe "Calculator" {
    Describe "Add" {
        BeforeAll {
            $calc = [Calculator]::new()
        }

        It "Add 1 returns 1" {
            $calc.Add(1) | Should -Be 1
        } 
        
        It "Add 10 returns 11" {
            $calc.Add(10) | Should -Be 11
        }
    
        It "Add 100 returns 111" {
            $calc.Add(100) | Should -Be 111
        }
    }

    Describe "Subtract" {
        BeforeAll {
            $calc = [Calculator]::new()
        }

        It "Subtract 1 returns -1" {
            $calc.Subtract(1) | Should -Be -1
        }
 
        It "Subtract 10 returns -11" {
            $calc.Subtract(10) | Should -Be -11
        }

        It "Subtract 100 returns -111" {
            $calc.Subtract(100) | Should -Be -111
        }
    }

    Describe "Multiply" {
        BeforeAll {
            $calc = [Calculator]::new(1)
        }

        It "Multiply 1 returns 1" {
            $calc.Multiply(1) | Should -Be 1
        }
 
        It "Multiply 10 returns 10" {
            $calc.Multiply(10) | Should -Be 10
        }

        It "Multiply 100 returns 1000" {
            $calc.Multiply(100) | Should -Be 1000
        }

        It "Multiply 0.1 returns 100" {
            $calc.Multiply(0.1) | Should -Be 100
        }
    }

    Describe "Divide" {
        BeforeAll {
            $calc = [Calculator]::new(1)
        }

        It "Divide 1 returns 1" {
            $calc.Divide(1) | Should -Be 1
        }
 
        It "Divide 10 returns 0.1" {
            $calc.Divide(10) | Should -Be 0.1
        }

        It "Divide 100 returns 0.001" {
            $calc.Divide(100) | Should -Be 0.001
        }

        It "Divide 100 returns 0.01" {
            $calc.Divide(0.1) | Should -Be 0.01
        }
    }
}