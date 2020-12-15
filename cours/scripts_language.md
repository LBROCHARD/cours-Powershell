# Les scripts en PowerShell pt.1 : le langage

Tout d'abord, je pense qu'avant de se lancer dans la programmation de scripts automatisés, il faut d'abord s'intéresser au langage, le langage de programmation, c'est le langage de scripts PowerShell, qui s'exécute sur le Windows PowerShell (ça c'est la suite de logiciel).
Ça va vous vous y retrouvez ? Windows PowerShell = la suite de logiciel, PowerShell = le langage.
 Et ce qu'il faut savoir sur le PowerShell dans un premier temps, c'est que c'est un langage de programmation orienté objet, ce que ça veut dire, c'est que plutôt que ce soit un langage avec un code qui se déroule et qui appelle des fonctions, c'est un code qui est composé d'objets, répartis en classes, qui comportent chacun des propriétés et des méthodes.

Ce qu'il faut en retenir, c'est que chaque "choses" que l'on va utiliser sont des objets, avec des propriétés, et que l'on va pouvoir appeler des actions qui sont propres à ses objets (les méthodes).


### Syntaxe générale :

Pour la syntaxe générale, les commandelets (ou cmdlets), qui sont juste des commandes (vous inquiétez pas) sont formées en 2 parties : un préfix, qui représente une action, et un nom. Les 2 séparés par un tiret. Exemple : ```Get-Help``` c'est la commande la plus basique, littéralement : obtenir - de l’aide.
Après ça, on peut rajouter des options, qui sont sous la forme d'un tiret et du nom de l'option, ex : ```write-host "Bonjour"``` affichera bonjour :

![bonjour](https://github.com/LBROCHARD/cours-linux/blob/main/images/Capture%20d%E2%80%99%C3%A9cran%202020-12-15%20084312.png  "bonjour à toi aussi programme !")

Alors que ```write-host "Bonjour" -fore 'red'``` affichera la même chose, mais avec l'option ```-fore 'red'``` ce qui colorera le rendu en rouge:

![redbonjour](https://github.com/LBROCHARD/cours-linux/blob/main/images/Capture%20d%E2%80%99%C3%A9cran%202020-12-15%20084407.png  "bonjour en rouge ça fait un peu peur quand même")

Ça marche par exemple pour trier quand on fait une recherche, par exemple, si on cherche des fichiers uniquement dans un dossier, on peut ajouter l'options ```-file``` après un ```Get-ChildItem``` pour qu'il ne nous montre uniquement que les fichiers : ```Get-ChildItem -file```
Cette manière de former les commandes est plus longue que sur certains autres Shell (je pense à UNIX notamment), mais permet cependant de retenir/trouver facilement les commandes : comment obtenir de l'aide ? --> obtenir *tiret* aide
Surtout que les préfix sont assez peu nombreux donc facile à retenir ...


### liste des principaux préfix :

|préfix | utilité |
|----|--------|
|add| ajoute des données a l'objet qui suit |
|get| permet d'obtenir des données sur l'objet qui suit |
|clear| permet de "vider" une donnée sans supprimer l'objet |
|import / export | permet d'importer/exporter des données |
|new| permet de créer un objet |
|set| permet de modifier une donnée de l'objet qui suit |
|write| permet d'écrire une donnée sur l'objet qui suit |


Et tous ses préfix peuvent être utilisées avec de nombreuses commandes (pour avoir une liste des commandes : ```Get-Command```)

### Commandes essentielles :

Il y a maintenant quelques commandes essentielles qu'il faut connaître pour pouvoir évoluer dans un environnement comme le PowerShell, par exemple pour pouvoir se déplacer entre les dossiers, en créer/renommer/supprimer ou même juste obtenir de l'aide, donc voici un tableau avec les commandes essentielles, leur utilité, et leur équivalent en UNIX (parce que j'ai déjà pratiqué un peu d'UNIX donc ça me parle pas mal, d’ailleurs les commandes UNIX fonctionnes également en PowerShell, donc comme elle sont souvent beaucoup plus courte, c'est pas mal d’en connaître quelques-unes, notamment pour ```ls``` ou ```cd``` par exemple, qui sont bien plus pratiques que ```Get-ChildItem``` et ```Set-Location```…

|commande |équivalent UNIX |utilité |
|----|--------|--------------------|
|Get-ChildItem |ls |permet d'afficher le contenue du répertoire courant |
|Set-Location |cd |permet de changer de répertoire courant (en gros de ce déplacer parmi les répertoires) |
|Get-Help |man |permet d'obtenir de l'aide |
|Clear-Host |clear |permet de "vider" la sortie de son contenue |
|Get-Command |help/which |permet d'obtenir la liste des commandes |
|Copy-Item |cp |permet de copier un fichier ou un répertoire |
|Move-Item |mv |permet de déplacer un objet |
|Remove-Item |rm/rmdir (pour un répertoire) |permet de supprimer un objet |
|Rename-Item |mv |permet de renommer un objet |
|Get-Content |cat |permet de récupérer le contenue d’un fichier ou d'une variable |
|Get-Location |pwd |permet de connaitre l'emplacement courant |
|Get-Process |ps |permet de voir la liste de tous les processus en cours d'exécution |
|Stop-Process |kill |permet d'arrêter un processus en cours d'exécution |
|Write-Output |echo |permet d'écrire quelque chose à l'écran (à la sortie) |

### Les pipelines :

Autre chose très très importante : les pipelines. Le pipeline c'est ce petit truc : ```|``` et il est très utile en PowerShell car il permet de chainer plusieurs commandes pour les faire fonctionner les unes derrières après les autres (si elles sont chainables), par exemple : la commande ```Get-process | out-file -filepath C:\Users\nom_utilisateur\Desktop\process.txt``` qui permet d'obtenir une liste des processus en cours grâce au ```Get-process``` permet aussi de les écris dans un fichier (situé dans le path indiqué, après l’option path) grâce au ```out-file```, qui utilise donc directement les information du ```Get-Process```, car il est placé derrière la pipeline, cela permet d'éviter de faire 2 lignes et peut s'avérer très utile de temps en temps.

  Regardez ça :

![pipelinecommaande](https://github.com/LBROCHARD/cours-linux/blob/main/images/Capture%20d%E2%80%99%C3%A9cran%202020-12-15%20085204.png  "tube")

Et dans le fichier texte :

![fichier text](https://github.com/LBROCHARD/cours-linux/blob/main/images/Capture%20d%E2%80%99%C3%A9cran%202020-12-15%20085301.png  "je trouve ça tellement cool")


### Petit plus : 

Oh et aussi, petit truc cool pour la route :
Le PowerShell n'est ni sensible à la casse (majuscules, minuscules), ni aux espaces ou tabulations en trop 
***yes :D***


[poursuivre vers : "les variables en powershell"](https://github.com/LBROCHARD/cours-linux/blob/main/cours/les_varaiables.md)



[retour au README.md](https://github.com/LBROCHARD/cours-linux)
