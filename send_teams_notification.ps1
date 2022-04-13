[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
[String]$var = "Fedex MKefed08 server"
$JSONBody = [PSCustomObject][Ordered]@{
    "@type"      = "MessageCard"
    "@context"   = "http://schema.org/extensions"
    "summary"    = "My first alert summary!"
    "themeColor" = '0078D7'
    "title"      = "fedex alert"
    "text"       = "FSMS Upload Service has stopped"
}
$TeamMessageBody = ConvertTo-Json $JSONBody -Depth 100
 
$parameters = @{
    "URI"         = ''
    "Method"      = 'POST'
    "Body"        = $TeamMessageBody
    "ContentType" = 'application/json'
}
Invoke-RestMethod @parameters
