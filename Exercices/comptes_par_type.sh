
CHEMIN=$1
TYPE_ENTITE=$2


cat "$CHEMIN"* | grep $TYPE_ENTITE | wc -l
