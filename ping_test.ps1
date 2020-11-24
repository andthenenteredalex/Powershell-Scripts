# ping loop tool

$computers_to_test = @(
'Computer1',
'Computer2',
'Computer3
)

Foreach($Computer in $computers_to_test){

Write-Host $Computer
Test-connection $Computer -count 1 -quiet
}
