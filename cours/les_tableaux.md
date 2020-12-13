# Les tableaux en powershell

### Syntaxe générale :

Le tableau en PowerShell s’utilise de manière générale comme une simple variables avec quelques petites choses en plus.
Pour créer un tableau à partir de valeur, il suffit de faire comme pour une variable, mais de mettre plusieurs valeurs, séparés par des virgules, comme ceci : ```$tableau = 1, 2, 3```

![tableau](https://github.com/LBROCHARD/cours-linux/blob/main/images/Capture%20d%E2%80%99%C3%A9cran%202020-12-13%20164203.png "un tableau")

Si on utilise GetType() on peut bien voir qu’il s’agit d’un tableau (symbolisé par les crochets)

Mais si on veut créer un tableau mais que l’on a pour l’instant qu’un seul objet, on ne peut pas faire ```$tableau = 1``` parce que cela créerait juste une variable, donc pour créer un tableau avec un seul objet, on fait comme ça : ```$tableau = ,1``` grâce à cette virgule, on peut annoncer qu’il s’agit bien d’un tableau même s’il n’y a qu’une seule valeur :

![tableau avec uen seule variable](https://github.com/LBROCHARD/cours-linux/blob/main/images/Capture%20d%E2%80%99%C3%A9cran%202020-12-13%20164433.png "ça marche pareil")

Si on veut entrer manuellement la valeur, ça fonctionne comme pour une variable, mais avec des crochets derrière le type choisis pour indiquer qu’il s’agit d’un tableau, exemple : ```[object[]]$tableau = 1, 2, 3```

On peut aussi créer un tableau « vide » en utilisant le @ : ```$tableau = @()``` cela permet de créer un tableau vide que l’on pourra remplir plus tard.

### Commandes utiles tableau :

Il y a maintenant plusieurs commandes qu’il faut connaitre afin d’utiliser correctement les tableaux. 
La première d’entre elles est surement l’ajout du tableau à la liste des tableaux, qui se fait comme ceci : ``` [System.Collections.ArrayList]$ArrayList1 = $nom_du_tableau ```
Cela permet de créer un tableau de type tableau, et donc, d’effectuer plusieurs actions dessus, comme par exemple ajouter ou supprimer des objets dans ce tableau. 
$nom_du_tableau.add(ce_qu’il_faut_ajouter)
$nom_du_tableau.remove(ce_qu’il_faut_supprimer)
$nom_du_tableau.lenght      pour avoir la longueur
$nom_du_tableau.contains(ce_qu’on_veut_verifier_qui_existe_dans_le_tableau)    renvoie un true/false
$nom_du_tableau = null 	pour effacer





[retour au README.md](https://github.com/LBROCHARD/cours-linux)
