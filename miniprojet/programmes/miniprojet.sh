if [ $# -ne 2 ]
then
        echo "Le scripte attend exactement deux arguments: le chemin verl le fichier d'URL et le chemin vers le fichier de sortie"
        exit
fi

FICHIER_URL=$1
FICHIER_SORTIE=$2

echo -e "<html>\n<head>\n<title>Tableau des résultats de miniprojet</title>\n<meta charset=\"UTF-8\" />\n</head>\n<body>\n<table>\n<tr><th>Number</th><th>URL</th><th>HTTP_code</th><th>Encoding</th><th>Words</th></tr>" > $FICHIER_SORTIE
lineno=1
while read -r line;
do
    HTTP_code=$(curl -I -L -s -w "%{http_code}" -o /dev/null $line)
    encoding=$(curl -I -L -s -w "%{content_type}" -o /dev/null -s $line | grep -E -o "charset=.*" | cut -d= -f2)
    words=$(lynx -dump -nolist $line | wc -w)
    echo -e "<tr>\n<td>${lineno}</td><td>${line}</td><td>${HTTP_code}</td><td>${encoding}</td><td>${words}</td>\n</tr>" >> $FICHIER_SORTIE;
    lineno=$(expr $lineno + 1)
done < $FICHIER_URL;

echo -e "</table>\n</body>\n</html>" >> $FICHIER_SORTIE
