FROM java:7
COPY src /home/root/javahelloworld/src
WORKDIR  /home/root/javahelloworld
EXPOSE 80 443
RUN mkdir bin
RUN javac -d bin src/HelloWorld.java
ENTRYPOINT ["java","-cp","bin","HelloWorld"]

