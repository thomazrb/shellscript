for file in *.tex; do
iconv -f iso8859-1 -t utf-8 "$file" -o "${file%.tex}.out.tex"
done
