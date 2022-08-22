$ErrorActionPreference = "Stop"

. ".make-functions.ps1"

Invoke-FormatAll
Invoke-Tests
Invoke-Linter
