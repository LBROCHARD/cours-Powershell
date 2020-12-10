# le scripts en powershell pt.1 : le language

donc tout d'abord, je pense qu'avant de ce lancer dans la programation de scripts automatisés, il faut d'abord s'interesser au language, le language de programtion, c'est le language de scripts PowerShell, qui s'éxecute sur le WindowsPowerShell (ça c'est la suite de logiciel), et ce qu'il faut savoir sur le powershell dans un premier temps, c'est que c'est un language de programation orienté objet, ce que ça veut dire, c'est que plutot que ce sois un language avec un code qui se déroulle et qui appele des fonction, c'est un code qui est composé d'objets, répartis en classes, qui comportent chacuns des propriétés et des méthodes.

*pour vraiment vraiment résumer, on a donc des classes, qui sont des types d'objet avec un nom (dit type) ex : une voiture... qui ont une liste de proptiété ex : un nombre de roues, une taille, une vitesse... et qui ont des*

ce qu'il faut retenir, c'est que chaque "choses" que l'on vas utiliser sont des objets, et que l'on vas pouvoir appeler des actions qui sont propres a ses objets 

### synthaxe générale :

pour la syntaxe général, les commandelets (ou cmdlets) (qui sont juste des commandes) sont formées en 2 parties : un préfix (qui represente une action) et un nom, les 2 séparés par un tiret. exemple : ```Get-Help``` c'est la commande la plus basique, literralement : obtenir - de l'aide .
après ça, on peut rajouter des options, qui sont sous la forme d'un tiret et du nom de l'option, ex : ```write-host "Bonjour"``` affichera bonjour alors que ```write-host "Bonjour" -fore 'yellow'``` affichera la même chose, mais avec l'option ```-fore 'yellow'``` ce qui fera colorera le rendut en jaune, ça marche par exemple pour trier quand on fait une recherhe, par exemple, si on cherche des fichiers uniquement dans un dossier, on peut ajouter l'options ```-file``` après un ```Get-ChildItem``` pour qu'il ne nous montre que les fichier : ```Get-ChildItem -file```
cette manière de former les commandes est plus longue que sur certains autres shell (je pense à UNIX notamment), mais permet cependant de retenir/trouver facilement les commandes : comment obtenir de l'aide ? --> obtenir-aide
surtout que la liste les préfix sont très peu nombreux donc facile à retenir ...

### liste de préfix :

|prefix | utilité |
|----|--------|
|add|ajoute des données a l'objet qui suit |
|get|permet d'obtenir des données sur l'objet qui suit |
|clear|permet de "vider" une donnée sans supprimer l'objet |
|import / export |permet d'importer/exporter des données |
|new|permet de creer un objet |
|set|peremt de modifier une donnée de l'objet qui suit |
|write|permet d'écrire une donnée sur l'objet qui suit |

et tous ses prefix peuvent être utilisées avec de nombreuses commandes (pour avoir une liste des commandes : ```Get-Command```)

### les pipelines




oh et aussi, petit truc cool pour la route :
>le powershell n'est ni sensible à la casse, ni aux espaces ou tabulations en trop ***yes***

et voici un tableau des commandes essentiels (avec leurs equivalent UNIX :



[retour au README.md](https://github.com/LBROCHARD/cours-linux)
