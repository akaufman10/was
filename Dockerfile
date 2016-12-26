FROM andrewosh/binder-base

MAINTAINER Alex Kaufman <akaufman10@gmail.com>

USER root

# Add custom packages
RUN /home/main/anaconda2/bin/python setup.py install
RUN apt-get install -y python python-dev python-distribute python-pip
RUN pip install hide_code
RUN pip install jupyter_contrib_nbextensions

#updrade ipywidgets
RUN pip install -I --upgrade setuptools
RUN pip install --upgrade ipywidgets

USER main

#Install the Jupyter Notebook Extensions
RUN jupyter contrib nbextension install --user
RUN jupyter nbextension enable --py --sys-prefix widgetsnbextension
RUN jupyter nbextension enable init_cell/main
RUN jupyter nbextension enable collapsible_headings/main
RUN jupyter nbextension enable toc2/main
RUN jupyter nbextension enable zenmode/main
RUN jupyter nbextension enable hide_input_all/main

#Replace the Jupyter Notebook 'Configurator' json data to enable zen mode at activation
RUN mv /home/main/notebooks/static/custom_js/notebook.json /home/main/.jupyter/nbconfig/notebook.json


#Trust all notebooks
RUN find . -name '*.ipynb' -exec jupyter trust {} \;



