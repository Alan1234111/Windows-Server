##
$pathToUsers = "C:\Users\alan\Documents"
$PASSWORD_FOR_USERS = "Password1"
$csvusers = Import-Csv -Path "$pathToUsers\Users.csv"
$password = ConvertTo-SecureString $PASSWORD_FOR_USERS -AsPlainText -Force
$allAdUsers = Get-ADUser -Filter *
##

foreach($csvuser in $csvusers) {

    $username = "$($csvuser.FirstName.SubString(0,1))$($csvuser.LastName)".ToLower()
    $groups = $csvuser.Groups -split ";"

   if ($allAdUsers | Where-Object {$_.givenName -eq $csvUser.FirstName -and $_.surName -eq $csvUser.LastName }) {

     ## User Already Exists ##
     Write-Output "User $($csvuser.FirstName), $($csvuser.LastName) already exists"
     
     # Adding to Groups 
     foreach($group in $groups) {
        Add-ADGroupMember -Identity $group -Members $username
        Write-Host "User $username added to group: $group" 
      }
    
   } else {
    $ou = $csvuser.OU
    Write-Host "Creating user: $($csvuser.FirstName)"
    try {
    # Creating User
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
               -Path "OU=$ou"
    
      # Adding to Groups 
      foreach($group in $groups) {
        Add-ADGroupMember -Identity $group -Members $username
        Write-Host "User $username added to group: $group" 
      }
     }
      catch {
        Write-Warning "Error when creating a user $username" 
      }
   }

}
