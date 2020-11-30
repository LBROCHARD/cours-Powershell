# powershell

[retour au README.md](https://github.com/LBROCHARD/cours-linux)
	
Powershell -> permet de faire des scripts genre qui te permettent de faire des boucles
et des trucs auto histoires d'aller un peu plus vite de 600 lignes de code

* Get-ChildItem -> ls
* Get-Alias [commandes] -> te donne equivalent commande genre tu peut faire alias ls pour faire un ls
* Set-Location [chemin] -> cd
* Get-Process -> processus en cours comme sur gestionnaire des tâches
* Get-Service -> services en cours comme sur gestionnaire des tâches
* Get-command -> te donne les commandes 


### grosso modo c'est quoi ? 

bon déjà c'est un logiciel developpé par microsoft c'est un outil de gestion d'automatisations et de management, c'est un peu comme un une version serveur de linux ou d'autre chose, c'est un invité de commande, et je crois bien que c'est un délire genre il est un peu à la base de windows (genre c'est ça le core) mais chui pas bien sûr de ça

petits facs :
-on peut utiliser les touches tab et maj pour completer les lignes de code (ça s'apelle la complétion)
-f7 = historique
-bon bah ça on connais mais bon il faut le rapeler : entrée = executer commande, flèche du haut = commande d'avant
-il y a le copié collé ***amen***


### la base :

c'est un truc qui te permet d'automatiser les trucs que tu dois faire, fin les commandes que tu dois taper quoi, tu fais des scripts qui te permettent de faire tout seuls juste en le lançant, plusieurs commandes que tu aurais dût taper toi même


## powershell


## brève histoire du powershell 

> note : le powershell est le sucesseur de l'interface de commande DOS de windows




## la structure de commande 

### les applets

de ce que je peut comprendre ici, les commandes sont formées comme des genre de phrases, genre : ```get-service``` où get = verbe service = nom
et ensuite on peut rajouter des commutateurs un peut comme des options spécifique : ```get-service -name "*net*"``` où -name est une option et "*net*" une valeur

et ensuite y'a un truc qui s'apelle da collection d'instance, en gros les commandes sembles revoyer à ce truc qui est un genre de collection d'éléments qui doivent être sois des actions, sois des programmes, je verrais


### les variables

les variables quand même je pense (j'éspère) que tout le monde connais donc je ne m'attarde pas là dessus, mais déjà ce que je peut dire c'est que visiblement, toutes les variables doivent être précédé d'un symbole $, qu'elle sont typées lors de l'affectation, et que le moyen le plus simple de les déclarés est sûrement direct de les affecter (comme d'hab quoi) ex : ```$Process = Get-Process```

### le pipeline

alors celui là j'en avait déjà entendut parlé et même un peu utilisé 
le pipeline déjà, c'est ce charactère : ```|```
il est décris comme capable de "chainer" plusieurs commandes,
moi je le considairerais personellement comme un "et" ou un "puis" étant donné qu'il permet de faire quelquechose d'autre à la suite

### les commandes découverte 

[Info](#){.btn .btn-info} test

quelques commandes "basiques"

|*cmdlet*|*description*|*alias*|
|--------|--------|--------|
|Get-Command|Informations de base sur les commandes|gcm|
|Get-Help|Aide de base (utiliser -full ou -example)|help, man|
|Get-Member |Informations sur les méthodes et propriétés des objets |gm |
|Get-PSDrive |Informations sur les “lecteurs” PowerShell |gdr |
|Get-Module |Liste les “modules” actuellement chargés |gmo |
|Get-PSSnapin |Liste les “snapins” actuellement chargés |gsnp |

_remarque : utilisez gcm avec un nom derrière_

c'est une liste de quelques commandes intégrés (appelées : cmdlet) parmis les très nombreuses autres commandes
pour compter son nombre exact on peut utiliser la commande ```(Get-Command –CommandType cmdlet).count```

version de powershell : ```$Host.version.major```

> oh sinon petit truc sympa, le powershell n'est ni sensible à la casse, ni aux espaces ou tabulations en trop ***amen bis*** 

quelques commutateurs pour le Get-Help : 
* example
* full
* detailed
* online

la commande help effectue en fait une recherche parmis tout les fichiers ```About_```  qui sont des fichiers de documentation et d'aide

(petite remarque : le mkdir marche, et dcp si je dis pas de conneries, la plupart des commandes linux doivent marcher (genre mv, rm, rmdir, nano...) (en même temps c'est un peu basé sur unix nan ?)

### la commande Get-Command

ce qu'on peut voir sur les commandes, c'est qu'il y en a différent types : 
* les alias : qui sont des pointeurs vers des commandes, des application ou des fonction mais avec des noms plus courts (ls c'est quand même plus simple que Get-ChildItem)
* les fonctions : qui sont des bouts de codes écris au préalable qui peremttent quand ils sont appelées d'executer le code qu'il contiennet, cela permet par exemple d'effectuer une action beaucoup plus rapidement (on pourrais imaginer une fonction qui quand on l'apelle nous permet de crer un fichier , d'ecrire quelquechose dedans puis de l'ouvrir, ce qui nous évite de faire 3 commandes différentes)
* les Cmdlet : qui sont un ensemble de commandes déjà présentes sur le powershell (si je comprend bien il s'agit de classes de Framwork .Net simplifié)
* les application : qui sont des fichiers executables situés dans le PATH et qui peuvent être téléchargés 

> info : il faut savoir que le powershell contient un bon nombre de commande de base, mais qu'il est quand même possible de le completer en téléchargant des "modules" qui sont un peu des extentions si on veut parler plus facilement

### la commande Get-Member

parait-il cette commande est un explorateur d'objets

|termes |explications |
|---|----------|
|classe  |plan de constru  |

comment s'utilise la programation objet avec le power shell : 
```object.methode ou object.propriété``` si en local
et :: ```[type.NET]::membre``` pour les framework .NET





> observations : alors visiblement on peut faire une variable string un peu non déclaré en fesant juste ("texte") et on peut quand même l'utiliser avec des propriétés, ou des méthodes plutot, parce qu'en powershell, absolument tout est un objet ce truc deviens un objet et dcp on peut utiliser des méthodes de bases sur lui, les méthodes qu'on peut utiliser avec nimporte quel variable en string, parce que quand on fait ("chaine").length on fait juste objet.propriété et quand on fait ("chaine").ToUpper() on fait objet.methode (et dcp comme c'est une méthode on met des parenthèses comme pour une fonction en programation procédural)

























[retour au README.md](https://github.com/LBROCHARD/cours-linux)
