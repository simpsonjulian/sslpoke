all: test list
test:
	mvn exec:java -D exec.mainClass=SSLPoke -Dexec.args="m2.neo4j.org 443"

list:
	keytool -list -keystore $$JAVA_HOME/jre/lib/security/cacerts
