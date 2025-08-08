Install k3s on your system ( k3s server )
install docker on your system 


What I have done in docker compose : 

it itself setup the postgress path , 
postgres image it will itself fetch but 
u just only have to give correct path on your system where to store the postgress data

bisque image , first you have to build the workspace to get the bisque image 
it itself setup the bisque path, 
pass the correct bisque built image name on your system ! 
u just only have to give the correct path on your system to database where it stores the bisque uploaded data ! 


Adding Modules on the BisQue : 
mount modules path as well , make sure path is correct  where your module is there on the system 
next login bisque , go to module manager 
paste : http://localhost:8080/engine_service and type load , 
drag the module you build on left side or press register all 
refresh bisque , 
go to module section and see the module its registered 

How to create modules : TODo : Follow another document 

For only BisQue developers 
mounting sourcecode to bisque : 
u see in bisque image we have entrypoint , and bootstrap arguments that handles installing bisque sourcode 
iinside contianer , but we change same source code by mounting externally then it throws errows 
so instead we mount on some temp folder and then restart bisque service ! 

whenever u change anything in Bisque image in developer mode , uncomment developer mode and then run : 
docker exec -it bisque-prod /mnt/copy_and_restart.sh



###### 9th july : goals : 
module run with object detector repository and code and push on the module page , that argo dag I have
to change and push on the 


*** please check on your server if ufw rules are added or not for your port otherwise kubectl will not able to 
ping on your machine , or go inside the bisque prod and test if u are able to ping or not ! 






