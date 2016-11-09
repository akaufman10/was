FROM andrewosh/binder-base

MAINTAINER Alex Kaufman <akaufman10@gmail.com>

USER root

# Add dependency
RUN apt-get update
RUN apt-get install -y graphviz

USER main

# Install requirements for Python 2
ADD requirements.txt requirements.txt
RUN pip install -r requirements.txt

RUN conda -c conda-forge ipywidgets
