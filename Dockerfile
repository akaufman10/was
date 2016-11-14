FROM andrewosh/binder-base

MAINTAINER Alex Kaufman <akaufman10@gmail.com>

USER root

# Add custom package
RUN /home/main/anaconda2/bin/python setup.py install

USER main


