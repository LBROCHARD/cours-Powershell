# Le PowerShell 

Qu'est-ce que le PowerShell ?

Vaste question ... 
Si on se fie à Microsoft (qui en sont quand même les développeurs) le PowerShell est :
> Une infrastructure multiplateforme pour la gestion de la configuration et de l’automatisation des tâches.

Wow, pas trop aidé hein ? Ce qu'il faut comprendre dans un premier temps, c'est que le PowerShell est un Shell : en gros c'est la passerelle entre un système d'exploitation et l'utilisateur, les commandes que l'on rentre sur un Shell permettent de contrôler et d'effectuer des actions sur le système d'exploitation.

Et le PowerShell c'est le Shell de Windows, c'est celui qui est utilisé pour faire passerelle entre le système d'exploitation Windows et l'utilisateur, il est le successeur de command.com qui est l'un des premiers Shell pour de *très très* vieux pc, puis de CMD qui était un interpréteur de commande qui fonctionnais en Bash.
Windows a d’ailleurs développé Windows PowerShell qui est fournis avec Windows, et qui est une suite de logiciel qui permet de faires des scripts en PowerShell. Il a plusieurs cousins, notamment le Shell UNIX, et déjà, l’un des avantages du PowerShell c'est qu'il ne demande pas d'avoir un bac +12 pour l'installer : il est direct sur Windows. (yay !)

Comme dit précédemment, le Windows PowerShell est une suite de logiciels développé par Microsoft, (ou un kit de développement si vous préférez), il comporte un langage de script (le PowerShell) et un interpréteur de commande qui fonctionne un peu comme un invité de commande (vous savez, ce truc là ->)

![invité de commande](https://github.com/LBROCHARD/cours-linux/blob/main/images/Capture%20d%E2%80%99%C3%A9cran%202020-12-08%20162627.png  "un peu roots nan ?")

(Mais en mieux)

Windows PowerShell et l’invite de commande sont tous les deux des interpréteurs de commande, c’est-à-dire une interface qui permet de rentrer des commandes qui effectuerons différentes actions sur Windows, comme par exemple juste créer un fichier (pour les plus simples), ou aller jusqu’à gérer les utilisateurs par exemple. C’est un peu comme une télécommande Windows, on l'utilise pour dire à Windows quoi faire.
Et, oui, maintenant on peut faire la plupart de ses choses à la main, mais nous on est des développeurs nous, ce qu'on veut c'est au-to-ma-ti-ser, histoire de pas perdre de temps, car oui, un des principaux usages du PowerShell (et raison autre que le style pour dire que c'est plus cool que l'invite de commande) c'est de pouvoir faires des scripts, c'est à dire des vrai programmes qui permettrons de faire toutes ses commandes de manières automatisées, avec plusieurs commandes qui se suivent, des conditions, des boucles …(si c'est pas cool ça ...).

Tenez d'ailleurs, je ne l'ai toujours pas présenté, voici sous vos yeux ébahis, le PowerShell :

![lepowershell](https://github.com/LBROCHARD/cours-linux/blob/main/images/Capture%20d%E2%80%99%C3%A9cran%202020-12-08%20164545.png "whaaaaaa")

(qu'il est beau en bleu)

Tant qu'on reste sur cette fenêtre, le PowerShell n'a pas beaucoup plus d'intérêt que l'invité de commandes, nous ce qui vas surtout nous intéresser c'est le script, et pour en faire, on ne va pas utiliser la fenêtre « PowerShell », mais : le PowerShell ISE.


![lepowershellise](https://github.com/LBROCHARD/cours-linux/blob/main/images/Capture%20d%E2%80%99%C3%A9cran%202020-12-10%20111503.png "ma-gni-fique")

Que l'on peut trouver en faisant simplement une recherche Windows :

![trouverlepowershellise](https://github.com/LBROCHARD/cours-linux/blob/main/images/Capture%20d%E2%80%99%C3%A9cran%202020-12-10%20111405.png "pratique")

Et donc ce PowerShell ISE intègre un accès direct vers une grande partie des commandes (à droite) et vers un éditeur de scripts bien plus pratique que de tout taper à la main dans le terminal, c'est ça qu'on vas utiliser pour faires nos scripts en PowerShell.

















[aller au chapitre suivant : les scripts en powershell pt.1 : "le language"](https://github.com/LBROCHARD/cours-linux/blob/main/cours/scripts_language.md)

[retour au README.md](https://github.com/LBROCHARD/cours-linux)
