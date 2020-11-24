# powershell

	
Powershell -> permet de faire des scripts genre qui te permettent de faire des boucles
et des trucs auto histoires d'aller un peu plus vite de 600 lignes de code

Get-ChildItem -> ls
Get-Alias [commandes] -> te donne equivalent commande genre tu peut faire alias ls pour faire un ls
Set-Location [chemin] -> cd
Get-Process -> processus en cours comme sur gestionnaire des tâches
Get-Service -> services en cours comme sur gestionnaire des tâches
Get-command -> te donne les commandes 


### grosso modo c'est quoi ? 

bon déjà c'est un logiciel developpé par microsoft c'est un outil de gestion d'automatisations et de management, c'est un peu comme un une version serveur de linux ou d'autre chose, c'est un invité de commande, et je crois bien que c'est un délire genre il est un peu à la base de windows (genre c'est ça le core) mais chui pas bien sûr de ça

petits facs :
-on peut utiliser les touches tab et maj pour completer les lignes de code (ça s'apelle la complétion)
-f7 = historique
-bon bah ça on connais mais bon il faut le rapeler : entrée = executer commande, flèche du haut = commande d'avant
-il y a le copié collé ***amen***


### les applets

de ce que je peut comprendre ici, les commandes sont formées comme des genre de phrases, genre : ```get-service``` où get = verbe service = nom
et ensuite on peut rajouter des commutateurs un peut comme des options spécifique : ```get-service -name "*net*"``` où -name est une option et "*net*" une valeur
