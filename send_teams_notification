[String]$var = "Text which appears in the message content"
$JSONBody = [PSCustomObject][Ordered]@{
"@type" = "MessageCard"
"@context" = "<http://schema.org/extensions>"
"summary" = "My first alert summary!"
"themeColor" = '0078D7'
"title" = My first alert."
"text" = "Here is the detailed alert description!
Of course you can also add variables: $var"
}

$TeamMessageBody = ConvertTo-Json $JSONBody

$parameters = @{
"URI" = ''
"Method" = 'POST'
"Body" = $TeamMessageBody
"ContentType" = 'application/json'
}

Invoke-RestMethod @parameters
