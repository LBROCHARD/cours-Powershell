# Les boucles en PowerShell :

La boucle est un outil très puissant qui permet d’éviter d’effectuer des tonnes de conditions en boucles, et qui permet de gagner pas mal de temps, en PowerShell il en existe 2 types : la boucle UNTIL et la boucle WHILE.

### la boucle UNTIL :

La première des 2 boucles est la boucle UNTIL, la boucle UNTIL (jusqu’à en français) exécute un code jusqu’à ce que la condition soit vrai (facile en sois), pour la syntaxe, elle s’utilise comme ceci :
```powershell
do {
Bloc de code

} until (condition) 
```

Exemple sur le PowerShell ISE, une boucle qui compte jusqu'à 5 (probablement le truc le plus basique qu'on peut faire) :

![boucleUNTIL](https://github.com/LBROCHARD/cours-linux/blob/main/images/Capture%20d%E2%80%99%C3%A9cran%202020-12-15%20112644.png "tout à fait basique")

Et le résultat :

![boucleUNTILresult](https://github.com/LBROCHARD/cours-linux/blob/main/images/Capture%20d%E2%80%99%C3%A9cran%202020-12-15%20112706.png "par-fait")

Et évidemment, on peut ajouter plusieurs conditions grâce à -or ou -and qui peuvent être placés entre plusieurs conditions, -or pour que au moins une des deux conditions soient vrai, et -and pour que les 2 conditions soient vraies, comme ceci : ```} until (condition1) -or (condition2) ```

### la boucle WHILE :

La seconde des 2 boucles est la boucle WHILE (tant que en français), contrairement à la boucle UNTIL exécute un code TANT que la condition est vrai, pour la syntaxe, c’est la même chose que pour la boucle UNTIL :

```powershell
do {
Bloc de code 

} while (condition)
```

 Le même exemple que tout à l’heure mais avec une boucle WHILE :
 
 ![boucleWHILE](https://github.com/LBROCHARD/cours-linux/blob/main/images/Capture%20d%E2%80%99%C3%A9cran%202020-12-15%20120739.png "voilà voilà")
 
 Et qui fonctionne tout aussi bien ...
 
  ![boucleWHILEresult](https://github.com/LBROCHARD/cours-linux/blob/main/images/Capture%20d%E2%80%99%C3%A9cran%202020-12-15%20120751.png "même chose")
 
 

Et on peut toujours rajouter -or ou -and comme pour la boucle until




[aller vers *les scripts en powershell pt.2 : l'automatisation*](https://github.com/LBROCHARD/cours-linux/blob/main/cours/scripts_automatiser.md)

[retour au README.md](https://github.com/LBROCHARD/cours-linux)
