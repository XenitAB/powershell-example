# Powershell Example

This repository is used to show how to do things like tests, linting and formatting with Powershell.

## Tests

[Pester](https://pester.dev/) is being used to test Powershell code. See the files `calc.ps1` and `calc.Tests.ps1` for examples.

You can install Pester using the following:

```powershell
Set-PSRepository PSGallery -InstallationPolicy Trusted
Install-Module Pester -MinimumVersion 5.3.3 -Force -Scope CurrentUser -ErrorAction Stop
```

You can run only the tests using:

```
. ".make-functions.ps1"
Invoke-Tests
```

## Linting

> Lint, or a linter, is a static code analysis tool used to flag programming errors, bugs, stylistic errors and suspicious constructs.

[PSScriptAnalyzer](https://github.com/PowerShell/PSScriptAnalyzer) is used to [lint](<https://en.wikipedia.org/wiki/Lint_(software)>) the code.

Install the linter using:

```powershell
Set-PSRepository PSGallery -InstallationPolicy Trusted
Install-Module PSScriptAnalyzer -MinimumVersion 1.20.0 -Force -Scope CurrentUser -ErrorAction Stop
```

You can run only the linter using:

```powershell
. ".make-functions.ps1"
Invoke-Linter
```

## Formatting

[PSScriptAnalyzer](https://github.com/PowerShell/PSScriptAnalyzer) is used to format the code.

See linting for how to install it.

You can run only the formatter using:

```powershell
. ".make-functions.ps1"
Invoke-FormatAll
```

## Run all together

You can run tests, linter and formatter using the following:

```powershell
./.make.ps1
```

## Continuous Integration

There's a Pull Request validation setup and you can check it out in [pr-validation.yaml](.github/workflow/pr-validation.yaml). It will run the tests on Windows, Mac and Linux as well as verify that the linter passes without any warnings or errors as well as that the code is formatted correctly.
