# Open_Gl_Cherno


------------
-   Layer  -
------------
    ^
    |
    |
-------------       creates         -------------------                     
-Application - ---------------->    -  WINDOW Class   -
-------------                       - (eventlistener) -              
                                    ------------------
                                            ^                                        
------------------                          |
 OnEvent(Event &e)                          |
-----------------                   -----------------
                                    -               -
                                    -   Renderer    -
                                    -               -
                                    -----------------



# Docker compose
    Tuto: https://www.youtube.com/watch?v=R8_veQiYBjI&ab_channel=TechWorldwithNana

## how to push on docker: 

- Start docker deamon
- login on terminal: docker login -u "usename" -p "password" docker.io
- Create a tag with the same name of your docker repo: docker tag my_opengl_app_2 benmclemor/my_docker_opengl
- Check if created: docker images
- now you can push on your docker repo: docker push benmclemor/my_docker_opengl


## Run GUI app in linux docker container on windows host

Link: https://dev.to/darksmile92/run-gui-app-in-linux-docker-container-on-windows-host-4kde