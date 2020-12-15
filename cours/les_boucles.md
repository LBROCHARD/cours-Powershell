# Les boucles en PowerShell :

La boucle est un outil très puissant qui permet d’éviter d’effectuer des tonnes de conditions en boucles, et qui permet de gagner pas mal de temps, en PowerShell il en existe 2 types : la boucle UNTIL et la boucle WHILE.

### la boucle UNTIL :

La première des 2 boucles est la boucle UNTIL, la boucle UNTIL (jusqu’à en français) exécute un code jusqu’à ce que la condition soit vrai (facile en sois), pour la syntaxe, elle s’utilise comme ceci :
```do {```
```	Bloc de code ```
```} until (condition) ```

Et évidemment, on peut ajouter plusieurs conditions grâce à -or ou -and qui peuvent être placés entre plusieurs conditions, -or pour que au moins une des deux conditions soient vrai, et -and pour que les 2 conditions soient vraies, comme ceci : ```} until (condition1) -or (condition2) ```

### la boucle WHILE :

La seconde des 2 boucles est la boucle WHILE (tant que en français), contrairement à la boucle UNTIL exécute un code TANT que la condition est vrai, pour la syntaxe, c’est la même chose que pour la boucle UNTIL :

```do {```
```	Bloc de code ```
```} while (condition) ```

Et on peut toujours rajouter -or ou -and comme pour la boucle 









[retour au README.md](https://github.com/LBROCHARD/cours-linux)
