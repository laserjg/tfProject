FROM tensorflow/tensorflow:1.9.0-py3
ADD mycode.py /mycode.py
RUN pip3 install tensorflow-hub
RUN mkdir /home/mycache
ENV TFHUB_CACHE_DIR /home/mycache
RUN python3 /mycode.py

