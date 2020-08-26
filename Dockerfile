FROM ubuntu:latest

LABEL maintainer Jon GABIRONDO-LOPEZ <jongablop@gmail.com>

# Avoid warnings by switching to noninteractive
ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update \
    # Install apt-utils
    && apt-get install -y apt-utils \
    # Verify git, process tools, lsb-release (common in install instructions for CLIs) installed
    && apt-get -y install git iproute2 procps lsb-release \
    # Install C compilers (gcc not enough, so just went with build-essential which admittedly might be overkill),
    # needed to build pandas C extensions
    && apt-get -y install build-essential \
    # Install jupyter
    && apt-get install -y jupyter-notebook \
    && apt-get install -y jupyter-nbextension-jupyter-js-widgets \
    # cleanup
    && apt-get autoremove -y \
    && apt-get clean -y \
    && rm -rf /var/lib/apt/lists/*

RUN apt-get update \ 
    && apt-get install -y python3-pip

# Switch back to dialog for any ad-hoc use of apt-get
ENV DEBIAN_FRONTEND=dialog

WORKDIR /home/

# Clone the repo
RUN git clone https://github.com/jongablop/CallistoLab.git
WORKDIR /home/CallistoLab/

# Install Latex dependencies
RUN cat ./binder/apt.txt | xargs apt-get install -y

# If numpy is not installed independently Pandas can't be installed
RUN python3 -m pip install --upgrade pip numpy

# Install pandas manually
RUN apt-get install -y python3-pandas

RUN python3 -m pip install -r callistolab-requirements.txt

# Run post build commands
RUN ["chmod", "+x", "./binder/postBuild"]
RUN bash ./binder/postBuild

EXPOSE 8888

CMD git pull 
CMD exec jupyter notebook --NotebookApp.token='' --ip=0.0.0.0 --no-browser --allow-root
