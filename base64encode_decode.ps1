# Powershell Base64 encode, decode

Function Encode {
    $command_to_encode = Read-Host -Prompt 'Paste in your command to encode'
	
	$Bytes = [System.Text.Encoding]::Unicode.GetBytes($command_to_encode)
    $EncodedText =[Convert]::ToBase64String($Bytes)
    Write-Host $EncodedText

}


Function Decode {
    $command_to_decode = Read-Host -Prompt 'Paste in your command to decode'
	
    $DecodedText = [System.Text.Encoding]::Unicode.GetString([System.Convert]::FromBase64String($command_to_decode))
    Write-Host $DecodedText
}


do {
Write-Host 'Do you wish to encode, or decode?'
$encode_or_decode = Read-Host -Prompt 'Enter "e" for encode, "d" for decode, or "q" to quit'


if($encode_or_decode -eq 'e'){
    $continue_var = 'false'
    Encode
	} elseif($encode_or_decode -eq 'd') {
	$continue_var = 'false'
	Decode
	} else {
	Write-Host 'Please enter either a lowercase "e" or lowercase "d".'
	$continue_var = 'true'
	}

}
while ($continue_var -eq 'true')

