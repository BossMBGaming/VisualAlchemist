FROM python:latest
COPY . /web/app
WORKDIR /web/app
RUN pip install --no-cache-dir -r requirements.txt
CMD [ "python", "./valchemist.py" ]
