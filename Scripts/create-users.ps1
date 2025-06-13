##
$pathToUsers = "C:\Users\alan\Documents"
$PASSWORD_FOR_USERS = "Password1"
$csvusers = Import-Csv -Path "$pathToUsers\Users.csv"
$allAdUsers = Get-ADUser -Filter *
##


$password = ConvertTo-SecureString $PASSWORD_FOR_USERS -AsPlainText -Force


foreach($csvuser in $csvusers) {
   if ($allAdUsers | Where-Object {$_.givenName -eq $csvUser.FirstName -and $_.surName -eq $csvUser.LastName }) {
     ## User Already Exists ##
     Write-Output "User $($csvuser.FirstName), $($csvuser.LastName) already exists"
   } else {

    $username = "$($csvuser.FirstName.SubString(0,1))$($csvuser.LastName)".ToLower()
    Write-Host "Creating user: $($csvuser.FirstName)"
      
     New-ADUser -AccountPassword $password `
               -GivenName $csvuser.FirstName `
               -Surname $csvuser.LastName `
               -DisplayName $username `
               -Name $username `
               -SamAccountName $username `
               -UserPrincipalName "$username@realcompany.local"`
               -EmployeeID $username `
               -PasswordNeverExpires $true `
               -Enabled $true `
               -Path "OU=helpdesk,DC=realcompany,DC=local"  
   }

}
