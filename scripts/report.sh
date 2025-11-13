#!/bin/bash
kat="${1:-}" #utworzenie zmiennej dla  kataloga wejściowego
if [ "$kat" = "-n" ]; then
echo "program patrzy czy folder istnieje, jeśli nie to wypisuję bład"
echo "program przeszukuje podany katalog i wypisuję 5 największych podkatalogów"
echo "if [ ! -d "$kat" ]; then"
echo "echo katalog nie istnieje"
echo "exit 1"
echo "fi" 
echo "date +"%F %T"" 
echo "du -sh "$kat"/*/ 2>/dev/null|sort -h -r |tail -5"
exit 0   
fi
if [ ! -d "$kat" ]; then #warunek który sprawdza czy katalog istnieje
echo "katalog nie istnieje" #wypisanie  o nie istneniu katalogu
exit 1 # kod kończy program z wyjściem 1 co znaczy ż coś poszło nie tak, tu katalog nie istnieje
fi  
date +"%F %T" #wypisanie daty w podanym formacie
du -sh "$kat"/*/ 2>/dev/null|sort -h -r |tail -5 #program  wypisuje podkatalogi folderu danego na wejściu, sortuje je i wypisuję 5 największych
