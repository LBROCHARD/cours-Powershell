# Les conditions en PowerShell

 ###les différents types de conditions 

En PowerShell, il existe différents types de conditions, le IF, le ELSE, et le IF

###synthaxe générale :

If (condition)
{
	Bloc de code
}

`$texte = “hello”`
`If($texte -eq « hello »)`
`{`
`Write-output “hello, how are you ?”`
`} elseif($texte -eq « bonjour ») -or ($texte -eq “salut”) {`
`Write-output “salut ! comment ça vas ?”`
`} else {`
`Write-output “dafuk u just said ?”`
`}`


-eq = equal
-ne = not equal
-gt = greater than (plus grand que)
-ge = greater than or equal to (plus grand ou egal)
-lt = less than (plus petit que)
Le = less than or equal to (plus petit ou egal)
-or = ||
-and = &&
-like =
-notlike =
-match =
-notmatch =
-contains = (array)
-notcontains = (array)







[retour au README.md](https://github.com/LBROCHARD/cours-linux)
