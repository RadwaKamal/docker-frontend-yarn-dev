# Build from ubuntu 16.04
FROM ubuntu:16.04

# Update and install curl, bzip2
RUN apt-get update 
RUN apt-get install -y \
    curl \
    bzip2

# Get nodejs and install it
RUN curl -sL https://deb.nodesource.com/setup_8.x | bash -
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
RUN apt-get update 

RUN apt-get install -y \ 
    nodejs \
    git \
    yarn

# Get Ruby, compass gem for sass
RUN apt-get -y install \
    ruby \
    ruby-compass

RUN gem install compass

# Expose your chosen port, here I picked 9000, according to my webpack config
EXPOSE 9000

# Create working dir
RUN mkdir /home/app

# Get the app ready 
WORKDIR /home/app
CMD ["/bin/bash"]
