FICHIER=$1
TABLEAU="/home/tupikina/Documents/Cours/Plurital/PPE1-2025/miniprojet/tableaux/tableau_fr.tsv"
if [ ! -f "$FICHIER" ]
then
    echo "le fichier $FICHIER n'existe pas"
    exit
fi


echo -e "Number\tURL\tHTTP_code\tEncoding\tWords" > "$TABLEAU"
N=0
while read -r line;
do
    N=$((N + 1))
    HTTP_code=$(curl -L -sI "$line" | grep -i "HTTP/" | tr -d '\r\n')
    encoding=$(curl -L -sI "$line" | grep -i '^content-type'| tr -d '\r')
    words=$(lynx -dump -nolist "$line" | wc -w)
    echo -e "${N}\t${line}\t${HTTP_code}\t${encoding}\t${words}" >> "$TABLEAU";
done < "$FICHIER"
