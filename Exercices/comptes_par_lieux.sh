AN=$1
MOIS=$2

cat "/home/tupikina/Exercice1/ann/$AN/${AN}_$MOIS"* | grep Location | sort -k5
