# Les conditions en PowerShell

Les conditions sont un autre point très important dans un langage de programmation, elle permet à un programme de réagir en fonction de différents paramètres et donc d’avoir une réponse adaptée.
En PowerShell, les conditions sont assez basiques, et ressemble beaucoup à beaucoup d’autre langages.

### Synthaxe générale :

En PowerShell, il existe trois types de conditions, le IF, le ELSE, et le ELSEIF.
La base de ses conditions fonctionne de la manière suivante : le IF se traduit par un « si » en français, c’est-à-dire qu’on vas lui donner une condition (ex : est-ce que la valeur de cette variable est plus petite que celle-là ? est ce que la valeur de cette variable est true ?...) et en si c’est vrai, elle vas effectuer l’action qu’on lui aura assignée, si c’est faux, elle ne l’effectuera pas.
Pour ce qui est de la syntaxe elle est assez simple :

```If (condition) ```
```{```
```	Bloc de code```
```}```

Ça c’est pour la condition de base, mais après cette condition, mais on peut incrémenter le code avec des ELSE et des ELSEIF :

### Conditions ELSE et ELSIF : 

En plus de la boucle IF, on peut rajouter plusieurs autres conditions à sa suite, la première est le ELSE, il correspond en français à un sinon. 
Ajouté à la fin de la condition IF, il fera que si la condition n’est pas vraie (et donc que le contenue du IF ne s’exécute pas), il vas donc exécuter le contenue du ELSE à la place. 
Si on résume ça fait un : si cette condition est vraie je fais ça, sinon, je fais ça.
Et pour la syntaxe c’est très simple, on l’ajoute après la fin de la condition IF comme ceci :

`If (condition) `
`{`
`	Bloc de code`
`} else {`
`	Bloc de code `
`}`

Et ensuite, il existe le ELSIF, le ELSIF fonctionne (comme son nom l’indique) un peu comme les 2 autres conditions, il se place derrière un IF, mais avant le ELSE, (s’il y a un ELSE, ce qui n’est pas indispensable) et en gros, si la condition du IF n’est pas vrai, et bien il vérifie une nouvelle condition (la sienne, celle du ELSIF), si elle est vrai, il vas exécuter le programme contenue dans le ELSIF, et si c’est faux, il vas juste ne rien faire (à part si il y a un ELSE derrière).
Et ce qui est encore mieux avec le ELSIF, ce que l’on peut en mettre autant que l’on veut, ce qui veut dire que l’on peut mettre une condition (IF) si elle est vrai on exécute, sinon on passe à une autre condition (ELSIF), si elle est vrai, on exécute, sinon, on passe à une autre condition (ELSIF) … et ainsi de suite, autant de fois que l’on veut jusqu’au ELSE.
Et donc évidement, pour la syntaxe, ça se met comme une ELSE mais entre le IF et le ELSE :
`If (condition) `
`{`
`	Bloc de code`
`} elseif (condition) {`
`	Bloc de code `
`} else {`
`	Bloc de code `
`}`

Mais on à toujours pas parlé des conditions…

### Les opérateurs de conditions en Powershell :

On a parlé de IF, ELSIF, ELSE mais on a pas encore parlé des condition que l’on peut mettre entre parenthèses après un IF ou un ELSIF, ses conditions sont généralement des variables que l’on compares (est ce que variable 1 est égale à variable 2 ? est-ce que variable 1 est null ?...) et pour les comparer, on utilise des opérateurs de conditions, comme l’opérateur -eq qui vérifie si 2 valeurs sont égales par exemple,  ses opérateurs se placent comme ceci dans une condition : ``` if ($variable1 -eq $variable2) ``` et ne sont pas strictement fonctionnels qu’avec des variables, il peut s’agir de simple valeurs comme par exemple : ``` if ($variable1 -eq 2) ```
Voici une liste des plus importants opérateurs : 

|opérateur |utilité |
|--|----|
|-eq |vérifie si deux valeurs sont égales (==) |
|-ne |vérifie si deux valeurs ne sont pas égales (!=) |
|-gt |vérifie si la valeur de gauche est plus grande que la valeur de droite (>) |
|-ge |vérifie si la valeur de gauche est plus grande ou égale à la valeur de droite (>=) |
|-lt |vérifie si la valeur de gauche est plus petite que la valeur de droite (<) |
|-le |vérifie si la valeur de gauche est plus petite ou égale à la valeur de droite (<=) |
|-contains |vérifie si la collection (tableau) contient la valeur placée après |
|-notcontains |vérifie si la collection (tableau) ne contient pas la valeur placée après |
|-in |même chose que contains mais la valeur est à gauche et la collection est à droite |
|-notin |même chose que notcontains mais la valeur est à gauche et la collection est à droite |

On peut aussi ajouter plusieurs conditions grâce à -or, qui exécute le code si une des deux conditions est vrai, et -and, qui exécute le code si les deux conditions sont vraies. Ils se placent comme ceci :
`((condition) -or (condition))`

Petit exemple qui résume un peu tout ce qu’on a vu (avec le Sowershell ISE) :

![megacondition](https://github.com/LBROCHARD/cours-linux/blob/main/images/Capture%20d%E2%80%99%C3%A9cran%202020-12-15%20104843.png "elle veut rien dire, mais elle prend un peu tout")

C'est vraiment pas très utile comme code juste comme ça, mais ça permet de voir un peu.

[aller vers *les boucles en powershell*](https://github.com/LBROCHARD/cours-linux/blob/main/cours/les_boucles.md)

[retour au README.md](https://github.com/LBROCHARD/cours-linux)
