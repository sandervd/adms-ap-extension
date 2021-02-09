all: out/relatedentity.png out/subclass.png

out/relatedentity.png: plantuml.jar relatedentity.uml basedefinition.uml
	java -jar plantuml.jar -o out relatedentity.uml 
out/subclass.png: plantuml.jar subclass.uml basedefinition.uml
	java -jar plantuml.jar -o out subclass.uml

plantuml.jar:
	curl -L http://sourceforge.net/projects/plantuml/files/plantuml.jar/download --output plantuml.jar
