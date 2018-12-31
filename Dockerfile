FROM jupyter/datascience-notebook

RUN pip install --upgrade pip 

COPY requirements.txt /tmp/requirements.txt
RUN pip install -r /tmp/requirements.txt

COPY . /app
WORKDIR /app

CMD tail -f /dev/null
