FROM andrewosh/binder-base

MAINTAINER Alex Kaufman <akaufman10@gmail.com>

USER root

# Add custom package
RUN $HOME/setup.py install

USER main


