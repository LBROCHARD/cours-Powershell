# le scripts en powershell pt.1 : le language

donc tout d'abord, je pense qu'avant de ce lancer dans la programation de scripts automatisés, il faut d'abord s'interesser au language, le language de programtion, c'est le language de scripts PowerShell, qui s'éxecute sur le WindowsPowerShell (ça c'est la suite de logiciel), et ce qu'il faut savoir sur le powershell dans un premier temps, c'est que c'est un language de programation orienté objet, ce que ça veut dire, c'est que plutot que ce sois un language avec un code qui se déroulle et qui appele des fonction, c'est un code qui est composé d'objets, répartis en classes, qui comportent chacuns des propriétés et des méthodes.

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

### les pipelines :

autre chose très très importante : les pipelines, le pipeline c'est ce petit truc : ```|``` et il est très utile en powershell car il permet de chainer plusieurs commandes qui fonctionnent à la chaine, par exemple, 

### commandes essentielles :

il y a maintenat quelques commandes essentielles qu'il faut connaître pour pouvoir evoluer dans un environement comme le powershell, par exemple pour pouvoir se deplacer entre les dossiers, en créer/renommer/supprimer ou même juste obtenir de l'aide, donc voici un tableau avec les commandes essentielles, leur utilité, et leur equivalent en UNIX (parce que j'ai déjà pratiqué un peu d'UNIX donc ça me parle pas mal, et les commandes unix fonctionnes également en powershell, et comme elle sont souvent beaucoup plus courte, c'est pas mal à connaître, notemment pour ```ls``` ou ```cd``` par exmple, qui sont bien plus pratiques que ```Get-ChilsItem``` et ```Set-Location```

|commande |équivalent UNIX |utilité |
|----|--------|--------------------|
|Get-ChildItem |ls |permet d'afficher le contenue du repertoire courant |
|Set-Location |cd |peremt de changer de repertoire courant (en gros de ce deplacer parmis les repertoirs) |
|Get-Help |man |permet d'obtenir de l'aide |
|Clear-Host |clear |peremet de "vider" la sortie de son contenue |
|Get-Command |help/which |peremt d'obtenir la liste des commandes |
|Copy-Item |cp |permet de copier un fichier ou un repertoir |
|Move-Item |mv |permet de déplacer un objet |
|Remove-Item |rm/rmdir (pour un repertoire) |permet de supprimer un objet |
|Rename-Item |mv |permet de renomner un objet |
|Get-Content |cat |permet de récupéré le contenue d"un fichier ou d'une variable |
|Get-Location |pwd |permet de connaitre l'emplacement courant |
|Get-Process |ps |peremt de voir la liste de tout les processus en cours d'execution |
|Stop-Process |kill |permet d'arreter un processus en cours d'execution |
|Write-Output |echo |permet d'écrire quelquechose à l'écran (à la sortie) |
| | | |

### en plus : 

oh et aussi, petit truc cool pour la route :
>le powershell n'est ni sensible à la casse, ni aux espaces ou tabulations en trop ***yes***


[poursuivre vers : "les variables"](https://github.com/LBROCHARD/cours-linux/edit/main/cours/les_varaiables.md)



[retour au README.md](https://github.com/LBROCHARD/cours-linux)
