#!/bin/bash 


# install for dust https://github.com/bootandy/dust
installDust(){
    printf "downloading dust ...\n"
    wget -O ./dust.tar.gz https://github.com/bootandy/dust/releases/download/v0.8.1/dust-v0.8.1-x86_64-unknown-linux-musl.tar.gz
    printf "unziping ...\n"
    mkdir ./dust && tar -xvf ./dust.tar.gz -C ./dust --strip-components 1
    printf "move to /usr/local/bin ...\n"
    mv ./dust/dust /usr/local/bin
}

# install for duf https://github.com/muesli/duf
installDuf(){
    printf "downloading duf ...\n"
    wget -O ./duf.tar.gz https://github.com/muesli/duf/releases/download/v0.8.1/duf_0.8.1_linux_x86_64.tar.gz
    printf "unziping ... \n"
    mkdir ./duf && tar -xvf ./duf.tar.gz -C ./duf
    printf "move to /usr/local/bin ...\n"
    mv ./duf/duf  /usr/local/bin
}

# install for bottom https://github.com/ClementTsang/bottom#debianubuntu
installBottom(){
    printf "downloading bottom ...\n" 
    wget -O bottom.deb https://github.com/ClementTsang/bottom/releases/download/0.6.8/bottom_0.6.8_amd64.deb
    printf "installing bottom ... \n"
    dpkg -i bottom.deb
}


# install for exa https://github.com/ogham/exa
installExa(){
    printf "installing exa ... \n"
    apt install exa
}

installDust
installDuf
installBottom
installExa