Write-Host "Mistral - Bibliothek mit Agent verbinden"
Write-Host ""

$secureKey = Read-Host "API-Key" -AsSecureString
$agentId = Read-Host "Agent-ID"
$libraryId = Read-Host "Library-ID"

$ptr = [Runtime.InteropServices.Marshal]::SecureStringToBSTR($secureKey)

try {
    $mistralKey = [Runtime.InteropServices.Marshal]::PtrToStringBSTR($ptr)

    $headers = @{
        Authorization = "Bearer $mistralKey"
        "Content-Type" = "application/json"
    }

    $bodyObject = @{
        tools = @(
            @{
                type = "document_library"
                library_ids = @($libraryId)
            }
        )
    }

    $body = $bodyObject | ConvertTo-Json -Depth 5 -Compress

    try {
        $response = Invoke-RestMethod `
            -Method Patch `
            -Uri "https://api.mistral.ai/v1/agents/$agentId" `
            -Headers $headers `
            -Body $body

        $connected = $false

        foreach ($tool in $response.tools) {
            if ($tool.type -eq "document_library" -and $tool.library_ids -contains $libraryId) {
                $connected = $true
                break
            }
        }

        if ($connected) {
            Write-Host "✓ Bibliothek erfolgreich mit dem Agenten verbunden."
            exit 0
        }

        Write-Host "✗ Verbindung fehlgeschlagen."
        exit 1
    }
    catch {
        Write-Host "✗ Verbindung fehlgeschlagen."
        Write-Host $_.Exception.Message
        exit 1
    }
}
finally {
    if ($ptr -ne [IntPtr]::Zero) {
        [Runtime.InteropServices.Marshal]::ZeroFreeBSTR($ptr)
    }

    Remove-Variable secureKey -ErrorAction SilentlyContinue
    Remove-Variable mistralKey -ErrorAction SilentlyContinue
    Remove-Variable agentId -ErrorAction SilentlyContinue
    Remove-Variable libraryId -ErrorAction SilentlyContinue
    Remove-Variable headers -ErrorAction SilentlyContinue
    Remove-Variable bodyObject -ErrorAction SilentlyContinue
    Remove-Variable body -ErrorAction SilentlyContinue
    Remove-Variable response -ErrorAction SilentlyContinue
    Remove-Variable connected -ErrorAction SilentlyContinue
}
