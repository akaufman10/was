FROM andrewosh/binder-base

MAINTAINER Alex Kaufman <akaufman10@gmail.com>

USER root

# Add custom package
RUN /home/main/anaconda2/bin/python setup.py install
RUN apt-get install -y python python-dev python-distribute python-pip
RUN pip install hide_code


USER main


