@echo off
Rem a command line to get your ip wan address directly on your SFR router
Rem the response is stored in a first time in info.txt before extracting the ip

curl http://192.168.0.0/api/1.0/?method=wan.getInfo --output info.txt -silent
@sed -En "s/.*=\"([0-9]{1,3}.[0-9]{1,3}.[0-9]{1,3}.[0-9]{1,3}).*/\1/gp" info.txt 