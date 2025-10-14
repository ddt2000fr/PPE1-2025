
TYPE_ENTITE=$1

echo "Nombre de $TYPE_ENTITE en 2016: "
/home/tupikina/Exercice1/ann/comptes_par_type.sh ./2016/ $TYPE_ENTITE
echo "Nombre de $TYPE_ENTITE en 2017: "
/home/tupikina/Exercice1/ann/comptes_par_type.sh ./2017/ $TYPE_ENTITE
echo "Nombre de $TYPE_ENTITE en 2018: "
/home/tupikina/Exercice1/ann/comptes_par_type.sh ./2018/ $TYPE_ENTITE
