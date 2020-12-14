# Les tableaux en powershell

### Syntaxe générale :

Le tableau en PowerShell s’utilise de manière générale comme une simple variables avec quelques petites choses en plus.
Pour créer un tableau à partir de valeur, il suffit de faire comme pour une variable, mais de mettre plusieurs valeurs, séparés par des virgules, comme ceci : ```$tableau = 1, 2, 3```

![tableau](https://github.com/LBROCHARD/cours-linux/blob/main/images/Capture%20d%E2%80%99%C3%A9cran%202020-12-13%20164203.png "un tableau")

Si on utilise GetType() on peut bien voir qu’il s’agit d’un tableau (symbolisé par les crochets)

Mais si on veut créer un tableau mais que l’on a pour l’instant qu’un seul objet, on ne peut pas faire ```$tableau = 1``` parce que cela créerait juste une variable, donc pour créer un tableau avec un seul objet, on fait comme ça : ```$tableau = ,1``` grâce à cette virgule, on peut annoncer qu’il s’agit bien d’un tableau même s’il n’y a qu’une seule valeur :

![tableau avec une seule variable](https://github.com/LBROCHARD/cours-linux/blob/main/images/Capture%20d%E2%80%99%C3%A9cran%202020-12-13%20164433.png "ça marche pareil")

Si on veut entrer manuellement la valeur, ça fonctionne comme pour une variable, mais avec des crochets derrière le type choisis pour indiquer qu’il s’agit d’un tableau, exemple : ```[object[]]$tableau = 1, 2, 3```

On peut aussi créer un tableau « vide » en utilisant le @ : ```$tableau = @()``` cela permet de créer un tableau vide que l’on pourra remplir plus tard.

### Commandes utiles tableau :

Il y a maintenant plusieurs commandes qu’il faut connaitre afin d’utiliser correctement les tableaux :
Pour obtenir une valeur particulière dans un tableau, il suffit de rajouter des crochets après le nom du tableau avec l’index de l’objet que l’on souhaite obtenir, comme ceci : ```$nom_du_tableau[index]```  (sachant qu’il ne faut pas oublier que le premier index d’un tableau à pour valeur 0, donc si on veut le 1er objet, on tape ```$nom_du_tableau[0]```,  et pour le second objet, son index sera l’index 2, et ainsi de suite…) , on peut également directement obtenir la dernière valeur d’un tableau en entrant l’index : -1

![tableau](https://github.com/LBROCHARD/cours-linux/blob/main/images/Capture%20d%E2%80%99%C3%A9cran%202020-12-14%20095841.png "pratique")

Maintenant, pour rajouter une valeur à un tableau, il existe une méthode assez simple, qui consiste à ajouter une valeur à sois même comme ceci : ```$nom_du_tableau = $nom_du_tableau + nouvelle_valeur ``` cela ajoutera la valeur au tableau en créant un nouvel index.

![ajoutervaleur](https://github.com/LBROCHARD/cours-linux/blob/main/images/Capture%20d%E2%80%99%C3%A9cran%202020-12-14%20093522.png "facile")

Mais ensuite, c’est compliqué de supprimer une valeur, a vrai dire, la méthode la plus simple consiste faire une boucle qui créé un nouveau tableau, et qui pour la longueur du tableau, ajoute la valeur au nouveau tableau si elle ne correspond pas à ce que l’on veut supprimer ( inutile de comprendre ce que ça veut dire, tout ce qu’il faut retenir c’est que c’est compliqué), donc pas pratique quoi, et tout ça c’est pour une bonne raison, c’est parce que les tableaux ont une taille fixe. 
En gros quand on créé un tableau, on rentre un nombre de valeurs, et il se construit en taille en fonction du nombre de valeur (12 valeurs = j’ai une taille de 12 / j’ai 12 places) et cette valeur ne peut pas être changé, c’est pour ça qu’on créé un nouveau tableau quand on veut ajouter une valeur, et c’est pour ça que c’est compliqué d’enlever une valeur…

Mais pour simplifier ça, il existe une classe de tableau qui s’appelle le tableau-liste (ArrayList), et qui se créé comme un tableau, mais avec un type ArrayList, qui s’écrit comme ceci : ```[System.Collections.ArrayList]$nom_du_tableau  =  contenu``` on peut d’ailleurs soit, créer une un tableau directement comme ceci, soit créer ce tableau à partir d’un autre tableau (pour le faire, il suffit de mettre un autre tableau à la place du contenu.

![arraylist](https://github.com/LBROCHARD/cours-linux/blob/main/images/Capture%20d%E2%80%99%C3%A9cran%202020-12-14%20104944.png "franchement c'est pas si compliqué")

Et un tableau-liste est très utile, car il comporte plusieurs méthodes très utiles pour gérer les tableaux, qui permettent de tout faire très simplement, voici une liste de ses méthodes :

|méthode |syntaxe |utilité |
|--|----|----|
|.add |$nom_du_tableau.add(ce_qu’il_faut_ajouter) | permet d’ajouter une valeur au tableau |
|.remove |$nom_du_tableau.remove(ce_qu’il_faut_supprimer)| pour supprimer une valeur dans le tableau |
|lenght |$nom_du_tableau.lenght |pour connaitre la longueur du tableau | 
|.contains |$nom_du_tableau.contains(valeur) |vérifie que ce qui est mis entre parenthèses existe dans le tableau,  renvoie un true/false|
|null |$nom_du_tableau = null |pour effacer le contenue du tableau |


[aller vers *les conditions en powershell*](https://github.com/LBROCHARD/cours-linux/blob/main/cours/les_conditions.md)


[retour au README.md](https://github.com/LBROCHARD/cours-linux)
