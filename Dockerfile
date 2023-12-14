FROM redhat/ubi8
# we are using redhat 8 image from docker hub
# if this image is not available in docker server it will pull it
RUN dnf install dotnet-sdk-8.0 -y  
RUN mkdir /vijayapp
# uses to run any command during docker build time
COPY . /vijayapp/
# we are copying code from folder to inside docker image
 
WORKDIR /vijayapp
 
RUN dotnet build -o vijaybin
 
CMD ./vijaybin/ashu-webapp  --urls=http://0.0.0.0:5000
