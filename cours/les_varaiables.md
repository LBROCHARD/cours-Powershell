# les variables en powershell

### synthaxe générale :

je pense que je ne vais pas rapeller ce qu'est une variable, parce que si c'est le cas il vaut mieux commencer par aller voir [ici](https://www.youtube.com/watch?v=t8b9f5M9yoY).
pour ce qui est du powershell, les variables à chaque fois qu'on les utilises, sont écrites avec un ```$``` devant, c'est comme ça que l'on reconnais une variable en powershell.
pour affecter une valeur à une variable, ça fonctionne de la manière suivante : ``` $nom_variable = contenue``` si la variable n'existe pas, cette commande la créera automatiquement.
en fonction du contenue indiqué le type de la variable sera assigné automatiquement, mais si on veut le faire à la main, on peut le mettre entre crochets : ```[string]$var = "salu" ``` 
(pour connaitre le type d'une variable on peut utiliser ```$nom_variable.GetType()``` )
comme la plupart des language, on peut effectuer une opération durant une affectation, comme cela par exemple : ```$prix = 5 + 2``` et cette opération peut se faire avec une ou plusieurs varaibles : ```$prix1 = 12
$prix2 = 4
$prix3 = $prix1 + 3 
$prix = $prix3 + $prix2```
et l'opération peut également être une concaténation : ```$var1 = "bonjour "
$var2 = "comment ça vas ?"
$var = $var1 + $var2``` (ce qui vas nous donner : "bonjour comment ça vas ?")


### types :

il existes différent types de variables en powershel : 

|type |contient |
|--|-----------|
|string |chaîne de texte |
|char |symbole |
|bool |vrai ou faux (true/false) |
|int |nombre entier 32bits |
|long |nombre entier 64bits |
|decimal |nombre entier 128bits |
|double |nombre decimal à virgule flottante de 8octets |
|single |nombre decimal à virgule flottante de 32bits |
|datetime |date et heure |
|array |tableau (voir a tableau) |
|hashtable |tableau de hachage (pareil) |

### portée d'une variable 

une varable peut avoir différentes portées, elle peut avoir une portée globale, c'est à dire qu'elle posrte sur l'ensemble du powershell alors qu'une variable locale ne porte que sur un seul programme 
pour qu'une variable soit globale, il faut utiliser la commande suivante : ```$Global: variable = valeur``` comme par exemple : ```$Global:var4 = 12``` 

### quelques commandes utiles :

voici quelques commandes utiles pour utiliser les variables :

|commande |utilité |
|-------|-----------|
|Get-Variable  |peremt d'afficher la liste des variables |
|Out-File | la commande Out-File permet "d'écrire" la variable dans un document que l'on séléctionne, (si le fichier séléctionné n'existe pas elle le créé), on l'utilise comme ceci : ```$nom_de_la_variable | Out-File [emplacement du fichier]```  |
|Get-Content | la commande Get-Content permet de lire le contenue d'un fichier, on l'utilise comme ceci : ```Get-Content [emplacement du fichier]``` |
|Clear-Variable | la commande Clear-Variable permet d'effacer le contenue d'une variable, elle s'utilise comme ceci : ```Clear-Variable -name nom_de_la_variable #without $```|
|Remove-Variable | la commande Remove-Variable permet quand a elle de supprimer une variable, elle s'utilise comme la commande clear variable : ```Remove-Variable -name nom_de_la_variable #without $```|



[continuer vers "les tableaux en powershell"](https://github.com/LBROCHARD/cours-linux/blob/main/cours/les_tableaux.md)

[retour au README.md](https://github.com/LBROCHARD/cours-linux)
