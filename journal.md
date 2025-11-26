Journal de bord du Projet encadré

## 06/10/2025

Personnellement, je n’ai pas eu de problèmes avec les exercices d’initiation à Git, car je l’avais déjà utilisé un peu pendant ma licence. J’ai bien réussi à créer une clé SSH, à faire ma première modification du fichier README.md et à l’envoyer sur mon dépôt Git, ainsi qu’à créer mon premier tag.

En revanche, je n’ai pas réussi tout de suite à créer une arborescence de fichiers de types divers. Je ne savais pas quelle commande utiliser, donc au début, je pensais plutôt utiliser sort. Pendant la correction du devoir, j’ai appris qu’on pouvait utiliser les RegEx comme argument de la commande mv, ce qui permet de déplacer tous les fichiers correspondant à un certain critère. J’ai aussi appris qu’on pouvait créer plusieurs dossiers grâce à la commande mkdir. Avec ces commandes, j’ai finalement réussi l’exercice.

## 14/10/2025

Les exercices 1 et 2a de la nouvelle feuille n'étaient pas très compliqués et ils m'ont permit de m'entraîner à utiliser les pipes et les variables du langage Power shell. Par contre, l'exercice 2b m'a bloqué et je n'ai réussi qu'à afficher les lignes qui contiennent les Locations par ordre alphabétique des lieux indiqués pour une année et un mois donnés. Pour l'instant je ne sais pas comment séparer les noms de lieux du reste du contenu des lignes pour les traiter après (compter le nombre de citations de chaque lieux etc). Je n'ai pas réussi à faire la validation des arguments non plus.

## 21/10/2025

La description du code du diapo Unix.

Le programme accepte un seul argument, qui est un fichier contenant une liste de liens URL.

Si le nombre d’arguments saisis par l’utilisateur n’est pas égal au nombre attendu (1), le programme affiche un message d’erreur et s’arrête.
Ensuite, on déclare deux variables : OK et NOK, initialisées à 0.

Le programme lit ensuite le fichier ligne par ligne. On vérifie pour chaque ligne la condition suivante. Si une ligne commence par l’expression https?://, elle est considérée comme valide :
un message correspondant est affiché, et le compteur des lignes valides (OK) est incrémenté de 1.

Si la ligne ne correspond pas à ce critère, un message indiquant qu’elle est invalide est affiché, et le compteur des lignes non valides (NOK) est incrémenté de 1.

La boucle se termine lorsque toutes les lignes du fichier ont été lues.
Enfin, le programme affiche le nombre de liens valides et non valides.

## 28/10/2025

En utilisant curl et lynx, j'ai réussi à récuperer le code HTTP de réponse à la requête, l’encodage de la page et le nombre de mots présents sur la page de tous les liens du fichier sauf le lien https://roboty.magistry.fr qui a une licence expirée. J'ai utilisé l'option -L de curl pour être rédirigée vers la bonne page de l'URL fr.wikipedia.org/wiki/Robot_d%27indexation.

Par contre, je ne sais pas comment supprimer tous les symboles extras de la balise 'content-type' et la ligne correspondante reste un peu trop longue : 'content-type: text/html; charset=UTF-8'

Au début, je n’arrivais pas à afficher correctement le tableau avec les informations : le nombre de mots passait à la ligne suivante, et le codage ne s’affichait pas du tout.
C’est alors que j’ai compris qu’il restait encore des caractères de retour à la ligne dans les lignes, et lorsque j’ai supprimé le caractère de retour chariot « \r » à la fin de chaque ligne, le tableau s’est enfin affiché correctement.

## 10/11/2025

J'ai réussi à récuperer le nom le type d'encodage de la page web sans information extra grâce à la combinaison de commandes apprises pendant la séance de correction du miniproget, commande grep et commande cut. J'ai aussi ajouté un deuxième paramètre/argument FICHIER_SORTIE dans mon code.

## 18/11/2025

Tout d'abord, j’ai regardé les styles de Bulma et j’ai choisi celui qui me plaisait. Ensuite, j’ai pris du temps pour comprendre la structure d’un fichier HTML et où ajouter les informations concernant le style CSS. Je me suis basée sur le layout du site de l’exemple donné par les professeurs, 5_index_3col.html.

Au début, je n’ai pas réussi à relier la page contenant mon tableau à la page principale (ajouter le lien). Mais je me suis rendu compte qu’il suffisait d’utiliser le chemin relatif vers la page du tableau, et non le chemin absolu, et le problème a été résolu.
