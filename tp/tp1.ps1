Write-Host "c pour créer des utilisateurs"
Write-Host "m pour modifier des utilisateurs"
Write-Host "r pour supprimer des utilisateurs"
Write-Host "l pour voir la liste des utilisateurs"
Write-Host "v pour vérifier si un utilisateurs existe"

$awnser = Read-Host -prompt "séléctionnez une action"

if ($awnser -eq "c") {
	$name = Read-Host -prompt "entrez un nom"
	$IsSecure = Read-Host -prompt "voulez vous entrez un mot de passe (oui/non)"

	if ($IsSecure -eq "oui"){
		$password = Read-Host -prompt "entrez mot de passe" -AsSecureString
		New-LocalUser -name $name -NoPassword

	} elseif ($IsSecure -eq "non") {
		New-LocalUser -name $name -password $password

	} else {
		Write-Host "réponse incorecte"

	}

} elseif ($awnser -eq "m") {
	$modify = Read-Host -prompt "que voulez vous changer (nom/password)"

	if ($modify -eq "nom") {
		$ToModify = Read-Host -prompt "nom de l'utilisateur à modifier"
		$NewName = Read-Host -prompt "entrez un nouveau nom"
		Rename-LocalUser -name $ToModify -newname $NewName

	} elseif ($modify -eq "password") {
		$ToModify = Read-Host -prompt "nom de l'utilisateur à modifier"
		$NewPassword = Read-Host -prompt "entrez un nouveau mot de passe" -AsSecureString
		$UserNewPassword = Get-LocalUser -name $ToModify
		$UserNewPassword | Set-LocalUser -password $NewPassword

	} else {
		Write-Host "réponse incorecte"

	}


} elseif ($awnser -eq "r") {
	$ToRemove = Read-Host -prompt "entrez nom d'utilisateur à supprimer"
	Remove-LocalUser -name $ToRemove


} elseif ($awnser -eq "l") {
	Get-LocalUser


} elseif ($awnser -eq "v") {
	$ToVerify = Read-Host -prompt "entrez un nom" 
	Get-LocalUser -name $ToVerify


} else {
	Write-Host "réponse incorecte"

}
