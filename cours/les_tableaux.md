# Les tableaux en powershell

### Syntaxe générale :

Le tableau en PowerShell s’utilise de manière générale comme une simple variables avec quelques petites choses en plus.
Pour créer un tableau à partir de valeur, il suffit de faire comme pour une variable, mais de mettre plusieurs valeurs, séparés par des virgules, comme ceci : ```$tableau = 1, 2, 3```

![bonsoir]()

Si on utilise GetType() on peut bien voir qu’il s’agit d’un tableau (symbolisé par les crochets)

Mais si on veut créer un tableau mais que l’on a pour l’instant qu’un seul objet, on ne peut pas faire ```$tableau = 1``` parce que cela créerait juste une variable, donc pour créer un tableau avec un seul objet, on fait comme ça : ```$tableau = ,1``` grâce à cette virgule, on peut annoncer qu’il s’agit bien d’un tableau même s’il n’y a qu’une seule valeur :

![yo]()

Si on veut entrer manuellement la valeur, ça fonctionne comme pour une variable, mais avec des crochets derrière le type choisis pour indiquer qu’il s’agit d’un tableau, exemple : ```[object[]]$tableau = 1, 2, 3```

On peut aussi créer un tableau « vide » en utilisant le @ : ```$tableau = @()``` cela permet de créer un tableau vide que l’on pourra remplir plus tard.





[retour au README.md](https://github.com/LBROCHARD/cours-linux)
