FROM amd64/ubuntu:20.04
MAINTAINER Alban <benmclemor2019@gmail.com>

# Skip prompts
ARG DEBIAN_FRONTEND=noninteractive

ENV DISPLAY=:0
RUN mkdir -p /home/app
COPY . /home/app
# set default dir so that next commands executes in /home/app dir
WORKDIR /home/app
# Update packages
RUN apt update; apt dist-upgrade -y
#installing GCC
RUN apt-get update && apt-get install -y gcc-9 g++ gdb
#installing CMAKE
RUN apt-get update && apt-get install -y cmake vim

# Install packages
## install glfw3
RUN apt-get install -y libglfw3 && apt-get install -y libglfw3-dev
## install OpenGL
RUN apt-get install -y freeglut3-dev libglew1.5 libglew1.5-dev libglu1-mesa libglu1-mesa-dev libgl1-mesa-glx libgl1-mesa-dev
#RUN git clone https://github.com/Dav1dde/glad.git && \
#    cd glad; cmake ./; make; cp -a include /usr/local/
# install GML
RUN apt-get install -y libglm-dev libx11-dev libxi-dev libgl1-mesa-dev libglu1-mesa-dev libxrandr-dev libxext-dev libxcursor-dev libxinerama-dev libxi-dev 
#install OpenGL
#RUN apt-get install libglu1-mesa-dev freeglut3-dev mesa-common-dev
#install vulkan
#RUN add-apt-repository ppa:oibaf/graphics-drivers && \
RUN apt update && \
    apt upgrade && \
    apt-get install -y libvulkan1 mesa-vulkan-drivers vulkan-utils

#others dependencies
RUN apt-get install -y 
# install VS code
RUN apt update && \
    apt install -y software-properties-common apt-transport-https wget && \
    wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | apt-key add - && \
    add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" && \
    apt-get install -y code && \
    apt update && \
    apt upgrade

RUN mkdir build && \
    cd build && \
    cmake .. && \
    make -j4


# Set entrypoint
#ENTRYPOINT ["echo" , "Try Best APM Monitoring Tool at atatus.com"]  -D FOREGROUND
#ENTRYPOINT code -D FOREGROUND
#CMD ["code"]