if [ $# -ne 2 ]
then
        echo "Le scripte attend exactement deux arguments: le chemin verl le fichier d'URL et le chemin vers le fichier de sortie"
        exit
fi

FICHIER_URL=$1
FICHIER_SORTIE=$2

echo -e '<html>
  <head>
    <meta charset="UTF-8" />
    <title>Tableau des résultats</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bulmaswatch/0.8.1/superhero/bulmaswatch.min.css">
  </head>

  <body>
      <div class="container">


        <div class="hero has-text-centered">
          <div class="hero-body">
            <h1 class="title">
              Tableau des résultats
            </h1>
          </div>
        </div>

        <div class="columns is-centered">
          <div class="column is-three-quarters">

            <div class="box">

              <table class="table is-bordered is-striped is-fullwidth">
                <thead>
                  <tr>
                    <th>Number</th>
                    <th>URL</th>
                    <th>HTTP_code</th>
                    <th>Encoding</th>
                    <th>Words</th>
                  </tr>
                </thead>

                <tbody>' > $FICHIER_SORTIE
lineno=1
while read -r line;
do
    HTTP_code=$(curl -I -L -s -w "%{http_code}" -o /dev/null $line)
    encoding=$(curl -I -L -s -w "%{content_type}" -o /dev/null -s $line | grep -E -o "charset=.*" | cut -d= -f2)
    words=$(lynx -dump -nolist $line | wc -w)
    echo -e "<tr>\n<td>${lineno}</td><td>${line}</td><td>${HTTP_code}</td><td>${encoding}</td><td>${words}</td>\n</tr>" >> $FICHIER_SORTIE;
    lineno=$(expr $lineno + 1)
done < $FICHIER_URL;

echo -e '</tbody>

              </table>

            </div>

          </div>
        </div>

      </div>
  </body>
</html>' >> $FICHIER_SORTIE
