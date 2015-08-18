test:
	mvn exec:java -D exec.mainClass=SSLPoke -Dexec.args="m2.neo4j.org 443"

gdroot-g2_cross.crt:
	wget -nc https://certs.godaddy.com/repository/gdroot-g2_cross.crt

install: gdroot-g2_cross.crt
	sudo keytool -import -alias m2.neo4j.org -keystore $$JAVA_HOME/jre/lib/security/cacerts -file gdroot-g2_cross.crt 
