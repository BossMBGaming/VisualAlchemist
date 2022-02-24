FROM python:latest
RUN mkdir /web
RUN useradd -d /web web
RUN chown -R web:web /web
USER web
WORKDIR /web
RUN git clone https://git.mbshed.ml/BossMB/VisualAlchemist.git app
WORKDIR /web/app
RUN pip install --no-cache-dir -r requirements.txt
CMD [ "python", "./valchemist.py" ]
