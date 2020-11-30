#!/bin/bash
if [ -e /home/a02201065/Desktop/arquivos/ProjetoContinuada3 ]
	then echo 'Projeto ja existe'
else
	echo 'baixando projeto'
	cd /home/a02201065/Desktop/arquivos
	git clone https://github.com/victor-vicente2002/ProjetoContinuada3.git
fi

which java | grep -q /usr/bin/java
if [ $? = 0 ]
	then
	echo 'Abrindo programinha :)'
	cd /home/a02201065/Desktop/arquivos/ProjetoContinuada3/continuada3/target
	java -jar continuada3-1.0-SNAPSHOT-jar-with-dependencies.jar

else
	echo 'instalando java'
	sudo apt install curl
	curl -s "https://get.sdkman.io" | bash
	source "$HOME/.sdkman/bin/sdkman-init.sh"
	sdk install java 8.0.275.j9-adpt
	echo 'Abrindo programinha :)'
	cd /home/ubuntu/Desktop/ProjetoContinuada3/continuada3/target
        java -jar continuada3-1.0-SNAPSHOT-jar-with-dependencies.jar
fi
