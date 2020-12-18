Write-Host '"add" pour ajouter un contact '
Write-Host '"modify" pour modifier un contact'
Write-Host '"list" pour voir la liste de tout les contact'
Write-Host '"details" pour voir les details du contact'
Write-Host '"mail" pour trouver un contact à partir de son adress mail'
Write-Host '"number" pour trouver un contact à partir de son numéro de téléphone'
Write-Host '"delete" pour supprimer un contact'

$awnser = Read-Host -prompt "choisisez une action"

if ($awnser -eq "add") {
    $name = Read-Host -prompt "entrez un nom"
    $number = Read-Host -prompt "entrez un numéro de téléphone"
    $mail = Read-Host -prompt "entrez une adresse email"

    $ContactFile = "C:\Users\lewis\Desktop\TAF\linux\powershell\tp4\contacts\" + $name + ".txt"

    $content = $name + "`n" + $number + "`n" + $mail

    $fileexist = Test-Path -Path $ContactFile


    if ($fileexist -eq $true) {
        Write-Host "un contact avec le même nom existe déjà"

    } else {
        New-Item $ContactFile -Value $content
        $everycontact = Get-Content -Path "C:\Users\lewis\Desktop\TAF\linux\powershell\tp4\everycontact.txt"
        Set-Content -Path "C:\Users\lewis\Desktop\TAF\linux\powershell\tp4\everycontact.txt" ($everycontact + "`n" + "$name")

    }


} elseif ($awnser -eq "modify") {

    $name = Read-Host -prompt "entrez un nom"
    $ContactFile = "C:\Users\lewis\Desktop\TAF\linux\powershell\tp4\contacts\" + $name + ".txt"
    $fileexist = Test-Path -Path $ContactFile

    if ($fileexist -eq $true) {

         $name = Get-Content -path $ContactFile -TotalCount 1
         $number = (Get-Content -path $ContactFile -TotalCount 2)[-1]
         $mail = (Get-Content -path $ContactFile -TotalCount 3)[-1]

         $modif = Read-Host -prompt "que voulez vous modifier (name/number/mail)"

         if ($modif -eq "name") {
              $name = Read-Host -prompt "entrez un nouveau nom"
              $content = $name + "`n" + $number + "`n" + $mail
              Set-Content -path $ContactFile $content
              $filename = $name + ".txt"
              Rename-Item -path $ContactFile -newname $filename

         } elseif ($modif -eq "number") {
              $number = Read-Host -prompt "entrez un nouveau numéro de téléphone"
              $content = $name + "`n" + $number + "`n" + $mail

              Set-Content -path $ContactFile $content


         } elseif ($modif -eq "mail") {
              $mail = Read-Host -prompt "entrez un nouveau mail"
              $content = $name + "`n" + $number + "`n" + $mail

              Set-Content -path $ContactFile $content


         } else {
            Write-Host "réponse incorrecte"

         }

    } else {
            Write-Host "ce contact n'éxiste pas"

    }


} elseif ($awnser -eq "list") {
    $everycontact = Get-Content -Path "C:\Users\lewis\Desktop\TAF\linux\powershell\tp4\everycontact.txt"

    foreach ($items in $everycontact) {

        Write-Host $items
    }
    

} elseif ($awnser -eq "details") {

    $name = Read-Host -prompt "entrez un nom"
    $ContactFile = "C:\Users\lewis\Desktop\TAF\linux\powershell\tp4\contacts\" + $name + ".txt"
    $fileexist = Test-Path -Path $ContactFile

    if ($fileexist -eq $true) {
    
        Get-Content -path $ContactFile


    } else {
        Write-Host "ce contact n'éxiste pas"

    }

} elseif ($awnser -eq "mail") {

 

} elseif ($awnser -eq "number") {


} elseif ($awnser -eq "delete") {

    $name = Read-Host -prompt "entrez un nom"
    $ContactFile = "C:\Users\lewis\Desktop\TAF\linux\powershell\tp4\contacts\" + $name + ".txt"
    $fileexist = Test-Path -Path $ContactFile

    if ($fileexist -eq $true) {
    
        Remove-Item -path $ContactFile



    } else {
        Write-Host "ce contact n'éxiste pas"

    }


} else {
    Write-Host "réponse incorrecte"

}
