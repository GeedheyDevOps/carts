FROM		schoolofdevops/carts-maven:v1


WORKDIR		/opt/carts


COPY		. .


RUN		mvn package \
		&& mv target/carts.jar  /run \
		&& rm -rf *



EXPOSE		80



CMD		java -jar /run/carts.jar  --port=80
