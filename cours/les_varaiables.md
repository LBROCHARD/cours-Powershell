# Les variables en PowerShell

### Syntaxe générale :

Je pense que je ne vais pas rappeler ce qu'est une variable, parce que si c'est le cas il vaut mieux commencer par aller voir [ici](https://www.youtube.com/watch?v=t8b9f5M9yoY).
Pour ce qui est du PowerShell, les variables à chaque fois qu'on les utilises, sont écrites avec un ```$``` devant, c'est comme ça que l'on reconnaît une variable en PowerShell.
Pour affecter une valeur à une variable, ça fonctionne de la manière suivante : ``` $nom_variable = contenue``` si la variable n'existe pas, cette commande la créera automatiquement.
En fonction du contenue indiqué le type de la variable sera assigné automatiquement, mais si on veut le faire à la main, on peut le mettre entre crochets : ```[string]$var = "salu" ``` 
(Pour connaitre le type d'une variable on peut utiliser ```$nom_variable.GetType()``` )
Comme la plupart des langages, on peut effectuer une opération durant une affectation, comme cela par exemple : ```$prix = 5 + 2``` et cette opération peut se faire avec une ou plusieurs variables : 

![variables](https://github.com/LBROCHARD/cours-linux/blob/main/images/Capture%20d%E2%80%99%C3%A9cran%202020-12-15%20090245.png  "ça fait bcp de variables pour pas grand chose mais bon...")

Et l'opération peut également être une concaténation : ```$var1 = "bonjour "```, 
```$var2 = "comment ça va ?"```, 
```$var = $var1 + $var2```, ce qui vas nous donner : "bonjour comment ça va ?" (on peut vérifier) :

![bonjour](https://github.com/LBROCHARD/cours-linux/blob/main/images/Capture%20d%E2%80%99%C3%A9cran%202020-12-15%20090810.png  "nickel")

### Types de variables :

Il existe différents types de variables en PowerShel : 

|type |contient |
|--|-----------|
|string |chaîne de texte |
|char |symbole |
|bool |vrai ou faux (true/false) |
|int |nombre entier 32bits |
|long |nombre entier 64bits |
|decimal |nombre entier 128bits |
|double |nombre décimal à virgule flottante de 8octets |
|single |nombre décimal à virgule flottante de 32bits |
|datetime |date et heure |
|array |tableau (voir a tableau) |
|hashtable |tableau de hachage (pareil) |

### Portée d'une variable :

Une variable peut avoir différentes portées, elle peut avoir une portée globale, c'est à dire qu'elle porte sur l'ensemble du PowerShell alors qu'une variable locale ne porte que sur un seul programme.
Pour qu'une variable soit globale, il faut utiliser la commande suivante : ```$Global: variable = valeur``` comme par exemple : ```$Global:var4 = 12```

### Quelques commandes utiles :

Voici quelques commandes utiles pour utiliser les variables :

|commande |utilité |
|-------|-----------|
|Get-Variable |permet d'afficher la liste des variables |
|Out-File | la commande Out-File permet "d'écrire" la variable dans un document que l'on sélectionne, (si le fichier sélectionné n'existe pas elle le créé), on l'utilise comme ceci : ```$nom_de_la_variable | Out-File [emplacement du fichier] ``` |
|Get-Content | la commande Get-Content permet de lire le contenue d'un fichier, on l'utilise comme ceci : ```Get-Content [emplacement du fichier] ``` |
|Clear-Variable | la commande Clear-Variable permet d'effacer le contenue d'une variable, elle s'utilise comme ceci : ```Clear-Variable -name nom_de_la_variable #without $```|
|Remove-Variable | la commande Remove-Variable permet quant à elle de supprimer une variable, elle s'utilise comme la commande clear variable : ```Remove-Variable -name nom_de_la_variable #without $```|




[continuer vers "les tableaux en powershell"](https://github.com/LBROCHARD/cours-linux/blob/main/cours/les_tableaux.md)

[retour au README.md](https://github.com/LBROCHARD/cours-linux)
