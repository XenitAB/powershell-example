BeforeAll {
    . $PSCommandPath.Replace('.Tests.ps1', '.ps1')
}

Describe "Add" {
    It "One plus one returns two" {
        add -a 1 -b 1 | Should -Be 2
    }

    It "Two plus ten returns twelve" {
        add -a 2 -b 10 | Should -Be 12
    }
}

Describe "Subtract" {
    It "One minus one returns zero" {
        subtract -a 1 -b 1 | Should -Be 0
    }

    It "Two minus ten returns minus eight" {
        subtract -a 2 -b 10 | Should -Be -8
    }
}

Describe "Multiply" {
    It "One times one returns one" {
        multiply -a 1 -b 1 | Should -Be 1
    }

    It "Two times ten returns twenty" {
        multiply -a 2 -b 10 | Should -Be 20
    }
}

Describe "Divide" {
    It "One divided by one returns one" {
        divide -a 1 -b 1 | Should -Be 1
    }

    It "Two divided by ten returns zero point two" {
        divide -a 2 -b 10 | Should -Be 0.2
    }
}
