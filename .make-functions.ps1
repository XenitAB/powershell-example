$ErrorActionPreference = "Stop"

function Invoke-FormatFile([Parameter(Mandatory)][String]$file) {
    $content = Get-Content -Raw -Path $file
    Invoke-Formatter -ScriptDefinition $content -Settings ".formatter-settings.psd1" | Out-File -FilePath $file -NoNewline
}

function Invoke-FormatAll() {
    Get-ChildItem -Recurse '*.ps*' | 
    ForEach-Object {
        Invoke-FormatFile $_.FullName
    }
}

function Invoke-Tests() {
    Invoke-Pester -Path . -PassThru
}

function Invoke-Linter() {
    Invoke-ScriptAnalyzer -Path *.ps1 -Recurse -OutVariable issues
    $errors = $issues.Where({ $_.Severity -match 'Error' })
    $warnings = $issues.Where({ $_.Severity -match 'Warning' })
    if ($errors -or $warnings) {
        Write-Error "There were $($errors.Count) errors and $($warnings.Count) warnings total." -ErrorAction Stop
    }
    else {
        Write-Output "There were no errors and no warnings."
    }
}
