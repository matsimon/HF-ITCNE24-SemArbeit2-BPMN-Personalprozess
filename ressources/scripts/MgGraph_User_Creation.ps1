#*******************************************************************#
# Script to Create a User with the Variables of the camunda Form    #
#*******************************************************************#

#Variables

#Vars for Connection
$Tenant = "iseschool2013.onmicrosoft.com"
$ClientID = ""
$Thumbprint = ""


#functions

function Generate-Password {
    param (
        [int]$length = 1
    )

    $words = "Bananen" , "Backofen" , "Schüssel" , "Computer" , "Rucksack" , "Teigling" , "Handtuch" , "Fernseh" , "Füller" , "Tische" , "Wanduhr" , "Zitronen" , "Erdbeere" , "Tomaten" , "Freiburg" , "Rümlang" , "Zermatt" , "Willisau" , "Aprikose" , "Pflaumen"
    $specialChars = "!", "$", "?", "%", "#", "&", "+", "." 
    $numbers = 0..9

    # Ersetzungstabelle
    $replaceTable = @{
        'a' = '@';
        'e' = '3';
        'i' = '1';
        'o' = '0';
    }

    $passwords = @()
    for ($i = 0; $i -lt $length; $i++) {
        do {
            $password = for ($j = 0; $j -lt 1; $j++) {
                $word = $words[(Get-Random -Maximum $words.length)]
                $specialChar = $specialChars[(Get-Random -Maximum $specialChars.length)]
                $number = $numbers[(Get-Random -Maximum $numbers.length)]

                # Ersetze Zeichen im Wort
                foreach ($key in $replaceTable.Keys) {
                    $word = $word -replace $key, $replaceTable[$key]
                }

                "$word$specialChar$number"
            }

            $password = -join $password
        } while ($passwords -contains $password)

        $passwords += $password
    }

    return $passwords
}

function New-Password {
    param(
        [int]$length = 1,
        $Debug = $true
    )
    
    # Passwort generieren
    $passwords = Generate-Password -length $length

    switch ($Debug) {
        $true { 
            foreach ($password in $passwords) {
            Write-Output $password
            } 
        }
        $false {  }
        Default { }
    }
}

function Check-UPN {
    param (
        [string]$Name = $null,
        [string]$Surname = $null, 
        [string]$DisplayName = $null
    )
    
    if ($Name,$Surname,$DisplayName = $null) {
        return
    }

}