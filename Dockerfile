FROM postgres

ADD script.py /

RUN apt-get update \
  && apt-get install -y python3-pip python3-dev \
  && cd /usr/local/bin \
  && ln -s /usr/bin/python3 python \
  && pip3 install --upgrade pip

RUN pip install Scrapy

CMD ["script.py"]
ENTRYPOINT ["python3"]


