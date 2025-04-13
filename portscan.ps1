# Port Scanner Script - Customized by James Moore
# Original Author: Josh Madakor

$Target = "10.0.0.111"
$Ports = 1..1024

Write-Host "`n[*] Scanning target: $Target" -ForegroundColor Cyan
Write-Host "[*] Scanning ports 1-1024..." -ForegroundColor Cyan

foreach ($Port in $Ports) {
    try {
        $Connection = New-Object System.Net.Sockets.TcpClient
        $Connection.Connect($Target, $Port)
        if ($Connection.Connected) {
            Write-Host "[+] Port $Port is OPEN" -ForegroundColor Green
            $Connection.Close()
        }
    }
    catch {
        # Do nothing if port is closed or connection fails
    }
}
Write-Host "`n[*] Scan complete." -ForegroundColor Cyan
