
echo "argument donné : $1"

CHEMIN=$1

for ELEMENT in 2016 2017 2018
do
echo "Nombre de lieux en $ELEMENT: "
cat "$CHEMIN/$ELEMENT/"* | grep Location | wc -l
done

