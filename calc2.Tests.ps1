BeforeAll {
    . $PSCommandPath.Replace('.Tests.ps1', '.ps1')
}

Describe "Add" {
    It "One plus one should return two" {
        add -a 1 -b 1 | Should -Be 2
    }

    It "One plus two should return three" {
        add -a 1 -b 2 | Should -Be 3
    }

    It "-100 plus -10 should return -110" {
        add -a -100 -b -10 | Should -Be -110
    }
}

Describe "Subtract" {
    It "One minus one should return zero" {
        subtract -a 1 -b 1 | Should -Be 0
    }

    It "Two minus one should return one" {
        subtract -a 2 -b 1 | Should -Be 1
    }

    It "100 minus 10 should return 90" {
        subtract -a 100 -b 10 | Should -Be 90
    }
}