DATADIR=$1
ANNEE=$2
TYPE=$3
#DIR="/home/tupikina/Exercice1/ann"

cat $DATADIR/$ANNEE/*.ann | grep "$TYPE" | wc -l
