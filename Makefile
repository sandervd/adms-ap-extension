all: output/relatedentity.png output/subclass.png plantuml.jar

output/relatedentity.png: relatedentity.uml basedefinition.uml
	java -jar plantuml.jar relatedentity.uml output/relatedentity.png
output/subclass.png: subclass.uml basedefinition.uml
	java -jar plantuml.jar subclass.uml output/subclass.png

plantuml.jar:
	curl -L http://sourceforge.net/projects/plantuml/files/plantuml.jar/download --output plantuml.jar
