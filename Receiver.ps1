$port = 4456

# Create a socket to listen on the specified port
$listener = New-Object System.Net.Sockets.UdpClient($port)

# Receive the broadcast message
while ($true) {
  $remoteEP = New-Object System.Net.IPEndPoint([System.Net.IPAddress]::Any, $port)
  $receivedBytes = $listener.Receive([ref]$remoteEP)
  $receivedData = [Text.Encoding]::ASCII.GetString($receivedBytes)
  
  # Print the received IP address
  Write-Host "Received IP address: $receivedData"
}

$listener.Close()