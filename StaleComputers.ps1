import-module ActiveDirectory
$date = [DateTime]::Today.AddDays(-90)
Get-ADComputer -Filter  ‘PasswordLastSet -le $date’ -SearchBase "ou=computers,ou=Graduate School Of Social Work,OU=divisions,DC=du,DC=edu" -properties PasswordLastSet |
ConvertTo-HTML –PreContent 'Possibly-inactive Computers' –Prop DistinguishedName,PasswordLastSet | 
 Out-File "C:\Users\matthew.w.johnson.DU\Documents\Reports\inactiveSSWcomputers.html"
