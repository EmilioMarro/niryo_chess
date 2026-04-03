# Documentation Front End

Ce repo' contient les fichiers de Front utilisés pour les documentations de la gamme Plug & Learn

Ce repo' doit être pull pour update les fichiers

Pour cloner un repo contenant ce projet, n'oubliez pas d'ajouter le paramètre 
**--recurse-submodules** à la commande `git clone`

Si vous faites un changement sur ce repo, vous devez l'appliquer sur chacun des repos l'utilisant 
via la commande suivant depuis la racine du projet: 

`git pull`

Cette commande ne fonctionne pas tout le temps (wola, je sais pas pourquoi). 
Si ça n'a pas fonctionné, placez vous dans le dossier front_end et refaites un `git pull`

Si ca ne marche toujours pas, vous pouvez alors utiliser la 
commande suivant : /!\ Ca va vous placer sur une DETACHED HEAD, ça peut
être génânt

`git submodule update --recursive --remote`

## Ajouter cette doc a un repo existant

`git submodule add git@gitlab.com:niryo/documentations/documentation-front-end.git front_end`
