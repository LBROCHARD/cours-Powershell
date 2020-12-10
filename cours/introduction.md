# le powershell

Qu'est ce que le powershell ? 

vaste question ... 
si on se fie à microsoft (qui en sont quand même les developpeurs) le powershell est :
> une infrastructure multiplateforme pour la gestion de la configuration et de l’automatisation des tâches

whouf, pas trop aidé hein ? ce qu'il faut comprendre dans un premier temps c'est que le powershell est un shell : c'est en gros la passerelle entre un système d'exploitation et l'utilisateur, les commandes que l'on rentre sur un shell permettent de contreoller et d'effectuer des actions sur le système d'exploitation.

et le powershell c'est le shell de windows, c'est celui qui est utilisé pour faire passerelle entre le système d'exploitation windows et l'utilisateur, il est le succésseur de command.com qui est l'un des premiers shell pour de *très très* vieux pc, puis de CMD qui était un intrepreteur de commande qui fonctionnais en bash.
et windows à developpé windowspowershell qui est fournis avec windows, et qui est une suite de logiciel qui permet de faires des scripts en powershell, il a plusieurs cousins, notamment le shell UNIX, mais l'avantage du powershell c'est qu'il ne demande pas d'avoir un bac +12 pour l'installer : il est direct sur windows. (yay !)

et donc comme dit précédemment, le windowspowershell est un suite de logiciels développé par microsoft, (ou un kit de developpement si vous preferez), il comporte un language de script et un interpreteur de commande qui fonctionne un peu comme un invité de commande (vous savez, ce truc là ->)

![invité de commande](https://github.com/LBROCHARD/cours-linux/blob/main/images/Capture%20d%E2%80%99%C3%A9cran%202020-12-08%20162627.png  "un peu roots nan ?")

(mais en mieux)

un interrpreteur de commande c'est une interface qui permet de rentrer des commandes qui effectuerons différentes actions sur windows, comme par exemple juste créer un fichier pour les plus simples, ou gérer les utilisateurs par exemple. c'est un peu comme une télécommande windows, on l'utilise pour dire à wçindows quoi faire.
et oui, maintenant on peut faire la plupart de ses choses à la main, mais nous on est des développeurs nous, ce qu'on veut c'est au-to-ma-ti-ser, histoire de pas perdre de temps, car oui, un des principaux usages du powershell (et raison autre que le style pour dire que c'est plus cool que l'invité de commande) c'est de pouvoir faires des scripts, c'est à dire des programmes qui permetterons de faire toutes ses commandes de manières automatisées (si c'est pas cool ça ...)

tenez d'ailleurs, je ne l'ai toujours pas présenté, voici sous vos yeux ébahis, le powershell : 

![lepowershell](https://github.com/LBROCHARD/cours-linux/blob/main/images/Capture%20d%E2%80%99%C3%A9cran%202020-12-08%20164545.png "whaaaaaa")

(qu'il est beau en bleu)

tant qu'on reste sur cette fenêtre, le powershell n'a pas beaucoup plus d'interet que l'invité de commandes, nous ce qui vas surtout nous interesser c'est le script, et il y a une autre fenêtre powershell qui vas beaucoup plus nous interesser : le powershell ISE :

![lepowershellise](https://github.com/LBROCHARD/cours-linux/blob/main/images/Capture%20d%E2%80%99%C3%A9cran%202020-12-10%20111503.png "ma-gni-fique")

que l'on peut trouver en faisant simplement une recherche windows : 

![trouverlepowershellise](https://github.com/LBROCHARD/cours-linux/blob/main/images/Capture%20d%E2%80%99%C3%A9cran%202020-12-10%20111405.png "pratique")

et donc ce powershell ise intègre un accès direct vers une grande partie des commandes et vers un editeur de scripts bien plus pratique que de tout tapper à la main dans le terminal, c'est ça qu'on vas utiliser pour faires nos scripts en powershell 

















[aller au chapitre suivant : les scripts en powershell pt.1 : "le language"](https://github.com/LBROCHARD/cours-linux/blob/main/cours/scripts_automatiser.md)

[retour au README.md](https://github.com/LBROCHARD/cours-linux)
